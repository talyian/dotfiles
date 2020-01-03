AWS_COMPLETER=$(which aws_completer)
if [[ -f "$AWS_COMPLETER" ]]; then
    complete -C "$AWS_COMPLETER" aws
fi
