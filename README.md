# Building On Avalanche - ETH + AVAX

# ERC20 CONTRACT USAGE AND OVERRIDE
This contract is for practicing erc20 smartcontract implementation through template to create new token and use other funcions.

# Description

This contract has mint , burn, transfer , transferfrom and other funcions of erc20 contract.

After compilation to deploy the contract we need to pass following values (name of token), (Abhre of token) and the Totall supply we want for our token.

The mind funcion generates the totall number of token for the account which is used to deploy the smartcontract.(Only Owner can mind tokens).

_Burn funcion burns corresponding account's token volume, Passed as parameters.

transfor funcion transfers specified number of tokens from owener account( account used to delploy smartcontract) to spefied account.

transforfrom funcion transfers specified number of tokens from one account to another account. I have overrided it as it was giving some kind of error so i just overrided it. So that it does what i want it to do.

# Executing the code
1-> goto https://www.openzeppelin.com/contracts website

2-> click (Open in Remix) Button.

3->copy my code past it in the editor.

4->goto deploy section and give a token name , toekn abhre and the totall supply of the token.

