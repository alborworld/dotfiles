alias psg='ps -ef | grep'

# System-specific 
os=`uname -s`

case $os in
    "Darwin" )
       alias ls='gls --color=auto'
       alias dircolors='gdircolors'
       ;;
    "Linux"  )
       alias ls='ls --color=auto'
       ;;
esac

alias vi="vim"
alias edit="vim"
alias getoctal="stat -c \"%a %n\""
#alias eks-sandbox='aws eks --region eu-west-1 update-kubeconfig --name sandbox-eks-poc --role arn:aws:iam::500170610794:role/x-carnext-admin --alias sandbox-eks-poc'
#alias eks-tools='aws eks --region eu-west-1 update-kubeconfig --name tools-eks-cluster --role arn:aws:iam::064561663946:role/x-carnext-admin --alias tools-eks-cluster'
#alias eks-sandbox-carnext-com='aws eks --region eu-west-1 update-kubeconfig --name  sandbox-eks-platform-cluster --role arn:aws:iam::236304934021:role/x-carnext-admin --alias sandbox-eks-platform-cluster'
alias k='kubectl'
