
# XCode
# Analyze release build
alias sx="xcodebuild clean && ~/src/clang/scan-build -k -V xcodebuild"
# Analyze test build
alias sxt="xcodebuild -target Test clean && ~/src/clang/scan-build -k -V xcodebuild -target Test"
alias ox="open *.xcodeproj"
alias xcb="xcodebuild"
alias xcbr="xcodebuild -configuration Release"
alias xcbd="xcodebuild -configuration Debug"
alias xccb="xcodebuild clean && xcodebuild"
