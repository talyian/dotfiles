KUBE=$(which kubectl)
if [[ -f "$KUBE" ]]; then
    . <("$KUBE" completion bash)
fi
