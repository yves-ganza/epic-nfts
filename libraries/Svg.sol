//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library Svg {
    function generate(string memory firstColor, string memory secondColor) internal pure returns(string memory){
        
        string memory boilerplate = string(abi.encodePacked("<svg xmlns='http://www.w3.org/2000/svg' preserveAspectRatio='xMinYMin meet' viewBox='0 0 350 350'><defs><radialGradient id='GradientRepeat' cx='0.5' cy='0.5' r='0.4' fx='0.75' fy='0.75' spreadMethod='repeat'> <stop offset='0%' stop-color='",firstColor,"'/><stop offset='100%' stop-color='",secondColor,"'/></radialGradient></defs><rect width='100%' height='100%' fill='url(#GradientRepeat)' ><animate attributeName='rx' values='0;5;0' dur='10s' repeatCount='indefinite' /></rect></svg>"));

        return boilerplate;
    }

}