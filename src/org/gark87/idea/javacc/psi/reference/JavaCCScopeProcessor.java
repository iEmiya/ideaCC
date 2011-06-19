package org.gark87.idea.javacc.psi.reference;

import com.intellij.openapi.util.Key;
import com.intellij.psi.PsiElement;
import com.intellij.psi.ResolveState;
import com.intellij.psi.scope.PsiScopeProcessor;
import org.gark87.idea.javacc.psi.Declaration;
import org.gark87.idea.javacc.psi.FormalParameter;
import org.gark87.idea.javacc.psi.RegExpSpec;
import org.gark87.idea.javacc.psi.VariableDeclarator;

import java.util.ArrayList;
import java.util.EnumSet;

/**
 * @author gark87 <arkady.galyash@gmail.com>
 */
public class JavaCCScopeProcessor implements PsiScopeProcessor {
    ArrayList<Declaration> candidates = new ArrayList<Declaration>();
    private final EnumSet<DeclarationType> myTypes;
    public static final EnumSet<DeclarationType> NONTERMINAL = EnumSet.of(DeclarationType.NONTERMINAL);
    public static final EnumSet<DeclarationType> NONTERMINAL_OR_VAR =
            EnumSet.of(DeclarationType.NONTERMINAL, DeclarationType.VARIABLE);
    public static final EnumSet<DeclarationType> TOKEN = EnumSet.of(DeclarationType.TOKEN);
    public static final EnumSet<DeclarationType> VARIABLE = EnumSet.of(DeclarationType.VARIABLE);


    public static enum DeclarationType {
        NONTERMINAL, TOKEN, VARIABLE
    }

    public JavaCCScopeProcessor(EnumSet<DeclarationType> myTypes) {
        this.myTypes = myTypes;
    }

    @Override
    public boolean execute(PsiElement element, ResolveState resolveState) {
        DeclarationType declType = findDeclarationType(element);
        if (!(myTypes.contains(declType)))
            return false;
        Declaration decl = (Declaration)element;
        if (isValid(decl)) {
            this.candidates.add(decl);
            return !keepLooking(decl);
        }
        return false;
    }

    protected boolean keepLooking(Declaration decl) {
        return true;
    }

    protected boolean isValid(Declaration decl) {
        return true;
    }

    private DeclarationType findDeclarationType(PsiElement element) {
        if (element instanceof VariableDeclarator || element instanceof FormalParameter)
            return DeclarationType.VARIABLE;
        if (element instanceof RegExpSpec)
            return DeclarationType.TOKEN;
        return JavaCCScopeProcessor.DeclarationType.NONTERMINAL;
    }

    @Override
    public <T> T getHint(Key<T> tKey) {
        return null;
    }

    @Override
    public void handleEvent(Event event, Object o) {
    }

    public Declaration[] getCandidates() {
        return candidates.toArray(new Declaration[candidates.size()]);
    }
}