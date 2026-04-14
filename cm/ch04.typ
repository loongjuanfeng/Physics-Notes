#import "../../libs.typ": *
#import "../syms.typ": *

#show: ilm.with(
  title: [Physics - Classic Mechanics],
  date: datetime.today(),
  author: "Junfeng Lve",
  abstract: [Study notes on Chapter 4, 角动量守恒 刚体力学 of _新概念物理教程 力学_，赵凯华.],
)
#show: setup

= 角动量守恒

#definition[质点对点的角动量][
  取空间中一固定点 $O$，设质点相对该点的位置矢量为 $vc(r)$，动量为 $vc(p)$，则质点对点 $O$ 的角动量定义为
  $
    vc(L)_O = vc(r) times vc(p) = vc(r) times m vc(v)
  $
]

角动量描述的不是“沿直线前进得多快”，而是“绕某点转动的趋势有多强”。它既依赖动量，也依赖参考点 $O$ 的选取。

#notation[力矩与参考点][
  质点所受力 $vc(F)$ 对点 $O$ 的力矩定义为
  $
    vc(M)_O = vc(r) times vc(F)
  $
  其中 $vc(r)$ 是从 $O$ 指向受力点的位置矢量。
]

因此，角动量与力矩都必须先说明“是关于哪个点来说的”。换一个参考点，数值与方向一般都会变化。

#theorem[角动量定理][
  对固定点 $O$，质点角动量对时间的变化率等于合外力对该点的力矩：
  $
    (dif vc(L)_O) / (dif t) = vc(M)_O
  $
]

#proof[角动量定理的推导][]
由定义
$
  vc(L)_O = vc(r) times vc(p)
$
对时间求导，得到
$
  (dif vc(L)_O) / (dif t)
  = (dif vc(r)) / (dif t) times vc(p) + vc(r) times (dif vc(p)) / (dif t)
$
因为
$
  (dif vc(r)) / (dif t) = vc(v), quad vc(p) = m vc(v)
$
所以第一项为
$
  vc(v) times vc(p) = m vc(v) times vc(v) = 0
$
再利用牛顿第二定律的动量形式
$
  (dif vc(p)) / (dif t) = vc(F)
$
便得
$
  (dif vc(L)_O) / (dif t) = vc(r) times vc(F) = vc(M)_O
$

#insight[角动量定理和动量定理的关系][
  动量定理讨论的是平动状态如何变化，角动量定理讨论的是绕某点的转动状态如何变化。二者的关系正如“力对应动量变化，力矩对应角动量变化”。
]

#notation[质点系的总角动量][
  对由若干质点组成的系统，相对同一点 $O$ 的总角动量定义为
  $
    vc(L)_O = sum_i vc(r)_i times vc(p)_i
  $
  系统所受合外力矩记为 $vc(M)_O^"ext"$。
]

#theorem[质点系的角动量定理][
  若系统内力满足成对共线的中心力形式，则有
  $
    (dif vc(L)_O) / (dif t) = vc(M)_O^"ext"
  $
]

#proof[为什么内力矩会抵消][]
对每个质点分别应用角动量定理并求和，可得总角动量变化率等于外力矩与内力矩之和。设质点 $i, j$ 间的相互作用力为 $vc(F)_(i j)$ 与 $vc(F)_(j i)$，则这一对内力对点 $O$ 的总力矩为
$
  vc(r)_i times vc(F)_(i j) + vc(r)_j times vc(F)_(j i)
$
由牛顿第三定律
$
  vc(F)_(j i) = -vc(F)_(i j)
$
可化为
$
  (vc(r)_i - vc(r)_j) times vc(F)_(i j)
$
若内力沿两质点连线方向，即
$
  vc(F)_(i j) parallel (vc(r)_i - vc(r)_j)
$
则该叉积为零。对所有内力对求和后，内力矩全部抵消，因此只剩外力矩。
$
  (dif vc(L)_O) / (dif t) = vc(M)_O^"ext"
$

#theorem[角动量守恒定律][
  若系统对点 $O$ 的合外力矩为零，即
  $
    vc(M)_O^"ext" = vc(0)
  $
  则系统对该点的总角动量守恒：
  $
    vc(L)_O = "const"
  $
]

它的核心不是“没有外力”，而是“没有外力矩”。即使外力不为零，只要其作用线通过参考点，或者各外力矩相互抵消，角动量仍可守恒。

#connection[中心力场中的角动量守恒][
  若质点所受力始终沿径向，即
  $
    vc(F) parallel vc(r)
  $
  则
  $
    vc(M)_O = vc(r) times vc(F) = vc(0)
  $
  因而
  $
    vc(L)_O = "const"
  $
  这说明中心力运动必定具有角动量守恒。
]

#connection[面积速度守恒][
  在中心力运动中，设单位时间扫过的面积为 $A$，则
  $
    dif A = 1/2 abs(vc(r) times dif vc(r))
  $
  从而
  $
    (dif A) / (dif t) = 1/2 abs(vc(r) times vc(v)) = abs(vc(L)_O) / (2 m)
  $
  所以角动量守恒等价于面积速度守恒，这正是开普勒第二定律的力学基础。
]

#connection[刚体绕定轴转动的形式][
  对绕固定轴转动的刚体，若角动量与角速度都沿该轴方向，则可写成
  $
    L = I omega
  $
  因而当外力矩为零时有
  $
    I omega = "const"
  $
  这就是花样滑冰运动员收臂后转得更快的原因：转动惯量减小，角速度增大。
]

#caveat[角动量守恒依赖参考点][
  角动量和力矩都与参考点有关，因此讨论守恒时必须先说明是“对哪个点”或“对哪条轴”。通常应选固定于惯性系中的点，或问题中具有明显对称性的点。
]

#example[行星近日点速度为什么更大][
  设行星绕太阳运动，太阳可近似看成中心力源，因此对太阳中心有角动量守恒：
  $
    L = m r v_perp = "const"
  $
  当行星靠近太阳时，$r$ 变小，为了保持 $L$ 不变，垂直于矢径的速度分量 $v_perp$ 必须增大，所以行星在近日点附近运动得更快。
]
