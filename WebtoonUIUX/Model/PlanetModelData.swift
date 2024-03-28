//
//  PlanetModelData.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//

import SwiftUI

struct PlanetModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
   // var color : Color
    var color: AngularGradient
    var planetHistory : String
}

var planets = [

    PlanetModel(image: "planet1", title: "샤넬", price: "GO",  color: AngularGradient(gradient: .init(colors: [.pink, .purple, .pink]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "샤넬은 1910년에 가브리엘 샤넬(코코 샤넬)에 의해 설립된 브랜드로, 거의 100년에 가까운 역사와 전통을 자랑합니다. 이는 샤넬이 지속적으로 전 세계적으로 인정받고 있고 브랜드 입니다."),
    PlanetModel(image: "planet2", title: "루이비통", price: "GO", color: AngularGradient(gradient: .init(colors: [.blue, .green, .blue]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "루이 비통(Louis Vuitton)은 1854년에 프랑스에서 태어난 전설적인 럭셔리 브랜드입니다. 그의 창립 이래로 루이 비통은 고품질 가방과 트렁크를 전 세계에 알리며 성장해 왔습니다. 루이 비통의 LV 모노그램 로고는 럭셔리와 세련된 이미지를 상징합니다."),
    PlanetModel(image: "planet3", title: "구찌", price: "GO", color: AngularGradient(gradient: .init(colors: [.orange, .red, .yellow]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "구찌(Gucci)는 1921년에 이탈리아에서 태어난 세계적인 패션 브랜드입니다. 그의 창립자 구치오 구찌오(Guccio Gucci)는 가죽 제품을 전문으로 하는 작은 가게를 시작했습니다. 그러나 그의 고객들로부터 받은 사랑과 성공적인 성장으로 인해 구찌는 금세 명성을 얻게 되었습니다. 특히 파이썬 가죽과 GG 로고 패턴은 브랜드의 상징적인 요소로 자리잡았습니다."),
    PlanetModel(image: "planet4", title: "디올", price: "GO", color: AngularGradient(gradient: .init(colors: [.purple, .blue, .pink]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "디올(Dior)은 1946년에 프랑스에서 태어난 전설적인 패션 브랜드입니다. 창립자 크리스챤 디올(Christian Dior)은 파리에서 첫 번째 컬렉션을 선보이며 세계적인 주목을 받았습니다. 디올은 풍부하고 여성스러운 디자인으로 유명해졌으며, 신의 디자이너로 불리는 디올의 스타일은 전통과 현대적인 아름다움을 조화롭게 결합하였습니다. 특히, 디올의 아이코닉한 실루엣인 '신트럴 라인'은 그의 시그니처로 알려져 있습니다."),
    PlanetModel(image: "planet5", title: "프라다", price: "GO", color: AngularGradient(gradient: .init(colors: [.green, .yellow, .green]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "프라다(Prada)는 1913년에 이탈리아에서 시작된 세계적인 패션 브랜드로, 창립자 마리오 프라다가 가죽 상품을 전문으로 하는 가게를 개업한 것이 출발점입니다. 그 후 1970년대에 미우치아 프라다(Miuccia Prada)가 회사를 이어받아 혁신적인 디자인과 고품질 제품으로 성장하여 국제적인 패션 브랜드로 발전하였습니다."),
    PlanetModel(image: "planet6", title: "입생로랑", price: "GO", color: AngularGradient(gradient: .init(colors: [.red, .orange, .red]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "입생로랑(Yves Saint Laurent)은 1961년에 프랑스에서 태어난 전설적인 패션 브랜드로, 창립자 이브 생 로랑(Yves Saint Laurent)의 이름을 따서 명명되었습니다. 입생로랑은 청소년 시절부터 예술과 패션에 대한 열정을 갖고 있었으며, 그의 독창적이고 대담한 디자인은 브랜드를 세계적인 패션 아이콘으로 성장시켰습니다."),
    PlanetModel(image: "planet7", title: "이슬이 백", price: "GO", color: AngularGradient(gradient: .init(colors: [.cyan, .indigo, .teal]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "")
    
]

//
var Directors : [PlanetModel] = [
    PlanetModel(image: "planet1", title: "비르진이 비에르", price: "GO", color: AngularGradient(gradient: .init(colors: [.pink, .purple, .pink]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "Virginie Viard는 프랑스의 패션 디자이너로, 샤넬(Chanel)의 크리에이티브 디렉터로 알려져 있습니다. 그녀는 2021년 2월 기준으로 샤넬의 디렉터로 임명되었습니다. Virginie Viard는 1963년에 프랑스에서 태어났으며, 디자인 분야에서의 경력을 쌓아왔습니다. 그녀는 특히 샤넬 내부에서 오랫동안 협력 관계를 유지해왔으며, 샤넬의 전설적인 디자이너인 칼 라거펠트(Karl Lagerfeld)와 함께 일한 경험이 있습니다. Virginie Viard는 샤넬의 전통과 유산을 존중하면서도 현대적이고 혁신적인 아이디어를 전달하는 디자인을 추구합니다. 그녀는 샤넬의 아이코닉한 요소들을 재해석하고 현대적인 감각으로 발전시키는 작업을 통해 브랜드의 유명한 스타일과 정체성을 유지하면서도 새로운 방향성을 제시하고 있습니다. Virginie Viard는 자신의 디자인에 대해 섬세하고 우아한 스타일을 갖추었다고 알려져 있으며, 그녀의 디자인은 여성성과 우아함을 강조하면서도 기능성과 현대적인 요소를 조화롭게 결합시키는 특징이 있습니다. 샤넬의 옷뿐만 아니라 액세서리와 모든 콜렉션의 디테일까지도 그녀의 지속적인 영감과 디자인 철학을 반영하고 있습니다."),

    PlanetModel(image: "planet2", title: "퍼렐 윌리엄", price: "GO", color: AngularGradient(gradient: .init(colors: [.yellow, .green, .cyan]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "Pharrell Williams는 미국의 가수, 래퍼, 프로듀서, 송라이터 및 패션 디자이너로 알려져 있습니다. 그는 1973년에 버지니아주 버지니아비치에서 태어났으며, 음악과 패션 분야에서 지속적인 성과를 거두고 있습니다.패션 분야에서도 Pharrell Williams는 큰 영향력을 지니고 있습니다. 그는 자신의 스타일과 패션 감각을 통해 유명한 패션 브랜드와 협업하였으며, 자신의 의류 라인인 'Billionaire Boys Club'과 'Icecream'을 창립했습니다. 그의 패션 스타일은 캐주얼하면서도 독특하며 트렌디한 요소를 담고 있습니다."),

    PlanetModel(image: "planet3", title: "사바토 데 사르노", price: "GO",color: AngularGradient(gradient: .init(colors: [.purple, .blue, .indigo]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "사바토 데 사르노는 이탈리아 나폴리에서 자랐습니다. 그는 2005년에 프라다에서 경력을 쌓기 시작했고, 2009년에 발렌티노에 합류하기 전에 돌체 앤 가바나로 이사했고, 그곳에서 그는 점점 더 많은 책임을 지는 직책을 맡았고, 마침내 남성과 여성 컬렉션을 감독하는 패션 디렉터로 임명되었습니다."),
    PlanetModel(image: "planet4", title: "그라치아 치우리", price: "GO", color: AngularGradient(gradient: .init(colors: [.orange, .red, .yellow]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "Maria Grazia Chiuri는 이탈리아의 패션 디자이너로 알려져 있습니다. 그녀는 현재 디올(Dior)의 크리에이티브 디렉터로 활동하고 있습니다. Maria Grazia Chiuri는 2016년에 디올의 첫 여성 크리에이티브 디렉터로 임명되어 파리 패션 주간에서 열리는 디올의 컬렉션을 책임지고 있습니다. Maria Grazia Chiuri는 전통적이고 우아한 스타일에 현대적이고 진보적인 요소를 접목시키는 작업으로 인정받고 있습니다. Maria Grazia Chiuri는 섬세한 디테일과 고품질의 소재를 중요시하며, 아름다운 자수, 레이스, 플라워 패턴 등을 활용하여 로맨틱하고 세련된 분위기를 연출하는 것을 선호합니다. 그녀의 디자인은 여성성을 강조하면서도 페미닌하고 시크한 감각을 담고 있습니다. Maria Grazia Chiuri는 현재까지 많은 패션 애호가와 전문가들로부터 그녀의 디자인과 미적 감각에 대한 평가를 받고 있으며, 디올 브랜드의 성공과 인기를 이끄는 중요한 인물 중 하나입니다."),
    PlanetModel(image: "planet5", title: "라프 시몬스", price: "GO", color: AngularGradient(gradient: .init(colors: [.pink, .purple, .blue]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "Raf Simons는 벨기에 출신의 패션 디자이너로, 현재는 프라다(Prada)의 공동 크리에이티브 디렉터로 활동하고 있습니다. 그 이전에는 디올(Dior)의 크리에이티브 디렉터로 알려져 있었습니다.Raf Simons는 현대적이고 세련된 디자인을 통해 주목을 받고 있으며, 그의 작품은 미니멀하면서도 진보적인 스타일을 특징으로 합니다. 그는 색상, 실루엣, 소재 등을 조합하여 고유한 미적 감각을 나타내고 있으며, 시대적인 트렌드와 기술적인 혁신을 반영하는 작품들을 선보입니다. Raf Simons는 또한 예술과 협업을 통해 광범위한 영감을 받고 있습니다. 그는 예술, 음악, 영화 등 다양한 분야와의 협업을 통해 독특하고 창의적인 컬렉션을 선보이고 있습니다. 그의 작업은 성공적이었으며, 그는 다수의 패션상과 인정을 받았습니다. Raf Simons의 디자인은 전통과 현대성을 융합시키며, 장소, 문화, 사회 등 다양한 영감을 통해 독자적인 패션 스타일을 구축하고 있습니다."),

    PlanetModel(image: "planet6", title: "안토니 바카렐로", price: "GO", color: AngularGradient(gradient: .init(colors: [.green, .teal, .mint]), center: .center, startAngle: .zero, endAngle: .degrees(180)), planetHistory: "Anthony Vaccarello는 벨기에 출신의 패션 디자이너로, 현재로서는 Saint Laurent(생 로랑)의 크리에이티브 디렉터로 활동하고 있습니다. 그는 현대적이고 섹시한 디자인으로 알려져 있으며, 그의 작품은 파워풀하고 과감한 스타일을 대표합니다. Anthony Vaccarello는 여성성을 강조하는 디자인과 대담한 커팅을 특징으로 합니다. 그는 잘 정의된 실루엣, 균형 잡힌 비대칭 요소, 강조된 선명한 디테일을 통해 고유한 시각적인 아이덴티티를 구축하고 있습니다. 그의 작품은 섹시함과 선명한 선이 결합되어 있으며, 강렬한 색상과 고급스러운 소재를 활용하여 트렌디하면서도 우아한 분위기를 연출합니다. Anthony Vaccarello의 디자인은 세련된 파티웨어와 나이트라이프 스타일을 대표하는 독특한 분위기를 담고 있습니다. Saint Laurent에서의 역할을 통해 그는 브랜드의 전통과 정체성을 존중하면서도 혁신과 실험을 추구하고 있습니다. 그의 작품은 세계적으로 인정받아 많은 패션 애호가와 전문가들에게 사랑을 받고 있으며, Saint Laurent의 대중적인 인기와 상업적인 성공에도 기여하고 있습니다."),


    PlanetModel(image: "planet7", title: "다니엘 리", price: "GO",color: AngularGradient(gradient: .init(colors: [.accentColor, .primary, .secondary, .accentColor, .secondary, .accentColor, .secondary]), center: .center, startAngle: .zero, endAngle: .degrees(360)), planetHistory: "Daniel Lee은 영국 출신의 디자이너로, 그는 공과 예술을 융합시키는 독특한 디자인과 혁신적인 시각으로 주목받고 있습니다. 그는 브랜드 보테가 베네타에서 2018년에 크리에이티브 디렉터로 임명된 이후로 브랜드를 혁신하고 재탄생시켰습니다. Daniel Lee은 고급 가죽 제품에 대한 탁월한 이해력과 섬세한 디테일에 대한 주목을 받으며, 단순하면서도 현대적이며 실용적인 디자인을 선보이고 있습니다. 그의 작품은 강조된 선과 실용적인 기능성을 갖추고 있으며, Daniel Lee은 자신의 디자인에 대해 고급스러움과 심플함, 세련미를 강조하며, 보테가 베네타 브랜드에 새로운 미적 감각과 혁신을 주입하고 있습니다. 그의 디자인은 파리속 가죽의 전통을 재해석하고 있으며, 시대적인 트렌드와 조화롭게 어우러진 독창적인 작품들로 인정받고 있습니다")

]


var planetscroll_Tabs = ["브랜드","디렉터","디자이너", "최신순", "추천순"]
