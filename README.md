<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://github.com/1102jhc/Youtube-Crawler)

프로젝트의 목표는 'Simple' 입니다. 기본 유튜브에는 수많은 영상들이 있고 그것을 검색하고자 하는 사람들도 점점 많아져 나날이 최고치를 찍고 있습니다. 그런 사용자들에게 조금은 더 직관적인 검색을 제공하고자 개발하게 되었습니다. 

**Advantages**
* 필터를 먼저 설정한 뒤 검색을 할 수 있습니다. 검색을 하고나서 필터를 설정하는 불편함을 제거합니다.
* 추천 검색 결과가 뜨지 않습니다. 불필요한 정보들의 노출을 막아주어 사용자의 편의성이 증가합니다.  

대부분의 사용자들에게는 추천된 영상들 또는 채널들이 그들의 선택에 좀 더 도움을 줄 수도 있습니다. 그렇기 때문에 사용자의 검색 목록들과 조회한 영상들을 분석하여 그들의 성향을 알아낸 것을 기반으로 추천된 리소스들을 나타내어주는 기능을 추가할 계획을 가지고 있습니다.


### Built With

프로젝트를 제작하는 데 사용된 주요 모듈을 기술하는 부분입니다. 언어, 프레임워크, API 등을 포함합니다.

* [C#(Windows Forms App(.NET Framework))](https://dotnet.microsoft.com/)
* [YoutubeDataAPI](https://developers.google.com/youtube/v3)



<!-- GETTING STARTED -->
## Getting Started

프로젝트를 로컬저장소에 다운받아 설정하는 방법에 대한 지침을 제공하는 방법입니다.
프로젝트를 실행하려면 다음 단계들을 따라해주세요.

### Prerequisites

프로젝트를 실행시키기 위해 필요한 소프트웨어 및 설치방법을 알려주는 예시입니다.

1. 비쥬얼 스튜디오를 설치합니다. 이 프로젝트는 2019버전을 사용하였습니다.
* Visual Studio 2019 [https://visualstudio.microsoft.com/ko/vs/](https://visualstudio.microsoft.com/ko/vs/)
  
2. VS에서 '추가 도구 및 기능설치' 를 누르고 Windows Forms App(.NET Framework) 템플릿을 설치합니다.

### Installation

1. 본인의 ' Youtube API KEY ' 를 발급받습니다. [https://console.developers.google.com](https://console.developers.google.com)
2. repo를 Clone 합니다.
 ```sh
   git clone https://github.com/your_username_/Project-Name.git
   ```
3. Youtube-Crawler 폴더 안의 Like_Youtube.sln 을 실행시킵니다. 
4. API 패키지를 설치합니다.
* VS에서 Nuget 패키지 관리자 >> 패키지 관리자 콘솔(Package Manager Console)
  ```sh
  install-package Google.APIs
  install-package Google.APIs.YouTube.v3
  ```
* 4번째 단계는 Youtube Data API를 사용하기 위해 설치하는 패키지입니다. 위 프로젝트에는 패키지가 이미 있기에 별도의 설치가 필요없으며 차후 버전의 문제나 별도의 작업을 하실 경우 참고하여 설치 해주세요.  
5. Form1의 176, 366번째 줄에 본인의 API 키를 넣습니다.
 ```
   ApiKey=" put your API Key "
   ```

<!-- USAGE EXAMPLES -->
## Usage

프로젝트 사용법을 나타낸 항목입니다.

1. Youtube-Crawloer 폴더 안의 Like_Youtube.sln을 실행해 주세요.
2. 본인의 API Key로 바꾸어 입력해주세요.
```
   ApiKey=" put your API Key "
   ```
3. 실행하시면 로고 창이 나오면서 1초 후 메인 폼으로 이동합니다.
4. 텍스트 창에 검색어 입력 후 필터를 설정하여 검색 버튼을 눌러주세요.
5. 리스트 박스에 검색된 리소스들이 나옵니다.
* 검색된 리소스를 좌클릭 하면 우측 창에 썸네일과 관련 정보들이 나오고 우클릭하면 미리보기 창이 나오며 더블클릭 시 사용자의 디폴트 브라우저로 해당 리소스 페이지를 띄워줍니다.

6. 메인 폼의 종료 버튼을 눌러도 꺼지지 않고 우측 밑 NotifyIcon으로 남습니다. 
7. NotifyIcon 좌클릭 시 모달 창이 나오며 썸네일 폴더 및 도움말을 볼 수 있습니다.
8. 종료 하고 싶으시면 NotifyIcon을 우클릭 후 종료 버튼을 눌러주세요.

<!-- CONTRIBUTING -->
## Contributing

여러분의 기여는 오픈 소스 커뮤니티를 윤택하고 활력 있는 배움과 영감의 장소로 만들어 줍니다. 모든 의견은 항상 **감사하게** 받겠습니다.

1. 프로젝트를 Fork 합니다.
2. master 기반으로 브랜치를 만듭니다.
3. 수정하여 Commit 합니다.
4. 브랜치에 Push 합니다.
5. Pull Request를 생성합니다.



<!-- LICENSE -->
## License

이 프로젝트는 MIT 라이센스에 따라 배포됩니다. 자세한 내용은 LICENSE.md를 참고해주세요.
README.md는 오픈소스를 활용한 것으로 MIT 라이선스에 따라 배포됩니다. 자세한 내용은 LICENSE.txt를 참조하세요.

<!-- CONTACT -->
## Contact

heechul Jung - heechul.dev@gmail.com

Github Address : [https://github.com/1102jhc](https://github.com/1102jhc)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/PortfolioImg1.png
