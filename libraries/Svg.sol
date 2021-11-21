//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library Svg {
    function generate(string memory data) internal pure returns(string memory){
        
        string memory boilerplate1 = string(abi.encodePacked('<svg height="678" version="1.1" width="1148" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;"><desc>Created with Raphal 2.0.1</desc><defs></defs><rect x="0" y="0" width="1148" height="678" r="0" rx="0" ry="0" fill="#e8e8e8" stroke="none" style=""></rect><text x="529" y="275" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="134px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 134px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="43.5">', data,  '</tspan></text><text x="586" y="244" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="109px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 109px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="35.25">', data,  '</tspan></text><text x="312" y="493" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="135px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 135px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="43.75">', data,  '</tspan></text><text x="186" y="153" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="46px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 46px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="15">', data,  '</tspan></text><text x="788" y="530" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="78px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 78px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="25.5">', data,  '</tspan></text><text x="638" y="463" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="72px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 72px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="23.5">', data,  '</tspan></text><text x="595" y="299" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="84px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 84px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="27.5">', data,  '</tspan></text><text x="532" y="291" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="46px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 46px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="15">', data,  '</tspan></text><text x="624" y="434" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="38px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 38px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="12.5">', data,  '</tspan></text><text x="846" y="332" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="76px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 76px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="24.5">', data,  '</tspan></text>'));
        
        string memory boilerplate2 = string(abi.encodePacked('<text x="177" y="79" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="149px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 149px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="48.25">', data,  '</tspan></text><text x="242" y="84" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="148px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 148px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="48">', data,  '</tspan></text><text x="178" y="408" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="67px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 67px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="21.75">', data,  '</tspan></text><text x="971" y="81" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="56px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 56px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="18">', data,  '</tspan></text><text x="892" y="302" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="50px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 50px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="16.5">', data,  '</tspan></text><text x="785" y="539" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="23px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 23px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="7.25">', data,  '</tspan></text><text x="540" y="228" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="58px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 58px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="19">', data,  '</tspan></text><text x="513" y="608" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="97px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 97px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="31.75">', data,  '</tspan></text><text x="693" y="199" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="18px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="6">', data,  '</tspan></text><text x="216" y="519" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="126px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 126px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="41">', data,  '</tspan></text>'));
        
        string memory boilerplate3 = string(abi.encodePacked('<text x="537" y="178" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="19px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="6.25">', data,  '</tspan></text><text x="256" y="438" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="47px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 47px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="15.25">', data,  '</tspan></text><text x="489" y="137" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="25px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 25px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="8.25">', data,  '</tspan></text><text x="615" y="245" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="41px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 41px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="13.25">', data,  '</tspan></text><text x="264" y="224" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="126px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 126px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="41">', data,  '</tspan></text><text x="502" y="155" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="16px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="5">', data,  '</tspan></text><text x="188" y="161" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="83px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 83px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="26.75">', data,  '</tspan></text><text x="178" y="392" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="118px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 118px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="38.5">', data,  '</tspan></text><text x="700" y="122" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="21px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 21px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="6.75">', data,  '</tspan></text><text x="825" y="509" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#242424" opacity="0.4" font-size="18px" font-family="Garamond" style="text-anchor: middle; font-style: normal; font-variant-caps: normal; font-weight: normal; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Garamond; opacity: 0.4;"><tspan dy="6">', data,  '</tspan></text></svg>'));

        string memory finalSvg = string(abi.encodePacked(boilerplate1, boilerplate2, boilerplate3));
        return finalSvg;
    }

}