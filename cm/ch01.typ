#import "../../libs.typ": *
#import "../syms.typ": *

#show: ilm.with(
  title: [Physics - Classic Mechanics],
  date: datetime.today(),
  author: "Junfeng Lve",
  abstract: [Study notes on Chapter 1, 质点运动学of _新概念物理教程 力学_，赵凯华.],
)
#show: setup

= 匀速圆周运动

#definition[匀速圆周运动][
  质点沿半径为 $R$ 的圆周运动，且速率 $v$ 保持不变，这种运动称为匀速圆周运动。
]

研究这类运动时，关键是把“大小不变、方向改变”的特点拆开看：位置始终在圆上，速度始终沿切线方向，而加速度则由速度方向的改变产生。

#notation[周期、频率与角速度][
  + 周期：$T$
  + 频率：$f = 1 / T$
  + 角速度：$omega = 2 pi / T = 2 pi f$
  + 径向单位矢量：$vc(e)_r(t)$，方向由圆心指向质点
  + 切向单位矢量：$vc(e)_theta(t)$，与 $vc(e)_r(t)$ 垂直，并沿运动方向
]

设质点在时刻 $t$ 的角位置为
$
  theta(t) = omega t + theta_0
$
若把运动平面看成嵌在三维空间中，并取
$
  vc(omega) = omega vc(e)_z
$
其中 $vc(e)_z$ 垂直于运动平面，则
$
  vc(v)(t) = vc(omega) times vc(r)(t)
$
则它的位置矢量可写成
$
  vc(r)(t) = R vc(e)_r(t) = R mat(cos theta(t); sin theta(t))
$
这说明匀速圆周运动可以看成位置矢量长度不变、方向以角速度 $omega$ 匀速转动的运动。

#insight[把 $vc(omega) times$ 看成算子][
  可以把映射
  $
    vc(x) mapsto vc(omega) times vc(x)
  $
  看成一个线性算子。它作用在位置矢量上给出速度，作用在速度矢量上给出加速度，因此在匀速圆周运动中，$vc(omega) times$ 的角色很像“使矢量随转动而变化”的求导算子。
]

更具体地说，若记
$
  Omega(vc(x)) = vc(omega) times vc(x)
$
则
$
  (dif vc(r)) / (dif t) = Omega(vc(r)), quad (dif vc(v)) / (dif t) = Omega(vc(v))
$
于是
$
  vc(v) = Omega(vc(r)), quad vc(a) = Omega(vc(v)) = Omega^2(vc(r))
$
这时 $Omega$ 就像一个“旋转生成元”：它不改变矢量的模长趋势，而是把矢量转到垂直方向。

#result[线速度与角速度][
  $
    vc(v)(t) = omega R vc(e)_theta(t) = vc(omega) times vc(r)(t)
  $
  $
    v = abs(vc(v)(t)) = omega R = (2 pi R) / T = 2 pi R f
  $
]

速度矢量始终沿切向，因此
$
  ip(vc(r)(t), vc(v)(t)) = 0
$
也就是说，速度大小恒定，但方向始终与半径垂直，沿轨道切线方向。

#theorem[向心加速度][
  匀速圆周运动的加速度始终指向圆心，且
  $
    vc(a)(t) = vc(omega) times vc(v)(t) = vc(omega) times (vc(omega) times vc(r)(t)) = -omega^2 vc(r)(t)
  $
  $
    a = abs(vc(a)(t)) = v^2 / R = omega^2 R
  $
]

负号表明加速度方向与位置矢量方向相反，也就是始终指向圆心。这就是向心加速度。

#insight[速率不变不等于没有加速度][
  加速度描述的是速度矢量的变化。匀速圆周运动中，虽然 $v$ 的大小不变，但速度方向不断转动，所以 $vc(v)$ 持续变化，从而 $vc(a) != 0$。
]

也可以从速度三角形直接理解这一点：在很短时间 $Delta t$ 内，速度方向转过小角 $Delta theta$，于是
$
  |Delta vc(v)| approx v Delta theta
$
两边同除以 $Delta t$，并令 $Delta t -> 0$，得到
$
  a = v lim_(Delta t -> 0) Delta theta / Delta t = v omega = v^2 / R
$

#connection[与动力学的联系][
  若质点质量为 $m$，则维持匀速圆周运动所需合力为
  $
    vc(F) = m vc(a) = -m omega^2 vc(r)
  $
  $
    F = abs(vc(F)) = m v^2 / R = m omega^2 R
  $
]

= 极坐标系

#definition[平面极坐标][
  在平面内取定原点 $O$ 后，任一点 $P$ 可用极径 $r$ 和极角 $theta$ 描述，其中 $r$ 是点到原点的距离，$theta$ 是位置矢量与固定参考轴的夹角。
]

对于研究平面曲线运动，极坐标往往比直角坐标更自然，因为它直接把“离原点多远”和“朝哪个方向”分开表示。

#notation[极坐标基矢][
  在点 $P$ 处引入两组单位矢量：

  + $vc(e)_r$：径向单位矢量，沿位置矢量方向。
  + $vc(e)_theta$：切向单位矢量，由 $vc(e)_r$ 逆时针转过 $pi / 2$ 得到。

  在直角坐标表示下，
  $
    vc(e)_r = mat(cos theta; sin theta), quad vc(e)_theta = mat(-sin theta; cos theta)
  $
]

于是位置矢量可写成
$
  vc(r) = r vc(e)_r
$
注意这里前一个 $vc(r)$ 表示位置矢量，后一个 $r$ 表示极径的大小。

#theorem[基矢的时间导数][
  当质点运动时，$r$ 和 $theta$ 都可能随时间变化，而基矢也随 $theta$ 转动，因此
  $
    (dif vc(e)_r) / (dif t) = ((dif theta) / (dif t)) vc(e)_theta
  $
  $
    (dif vc(e)_theta) / (dif t) = -((dif theta) / (dif t)) vc(e)_r
  $
]

#proof[为什么基矢也会变][]
由
$
  vc(e)_r = mat(cos theta; sin theta)
$
直接对时间求导，得到
$
  (dif vc(e)_r) / (dif t)
  = ((dif theta) / (dif t)) mat(-sin theta; cos theta)
  = ((dif theta) / (dif t)) vc(e)_theta
$

同理，
$
  vc(e)_theta = mat(-sin theta; cos theta)
$
故
$
  (dif vc(e)_theta) / (dif t)
  = -((dif theta) / (dif t)) mat(cos theta; sin theta)
  = -((dif theta) / (dif t)) vc(e)_r
$

#insight[极坐标公式为何看起来更复杂][
  在直角坐标中，基矢固定不动；在极坐标中，基矢本身会随质点位置一起转动。因此速度、加速度不仅来自 $r$ 和 $theta$ 的变化，也来自基矢方向的变化。
]

#result[速度公式][
  对位置矢量
  $
    vc(r) = r vc(e)_r
  $
  求导，得到
  $
    vc(v) = (dif vc(r)) / (dif t) = ((dif r) / (dif t)) vc(e)_r + r ((dif theta) / (dif t)) vc(e)_theta
  $
]

其中第一项表示沿径向的速度分量，第二项表示沿切向的速度分量。若记
$
  omega = (dif theta) / (dif t)
$
则也可写成
$
  vc(v) = ((dif r) / (dif t)) vc(e)_r + r omega vc(e)_theta
$

#result[加速度公式][
  再对速度求导，可得
  $
    vc(a)
    = (((dif^2 r) / (dif t^2)) - r (((dif theta) / (dif t))^2)) vc(e)_r
    + (r ((dif^2 theta) / (dif t^2)) + 2 ((dif r) / (dif t)) ((dif theta) / (dif t))) vc(e)_theta
  $
]

若记
$
  omega = (dif theta) / (dif t), quad alpha = (dif omega) / (dif t)
$
则加速度公式也可写成
$
  vc(a) = (((dif^2 r) / (dif t^2)) - r omega^2) vc(e)_r + (r alpha + 2 ((dif r) / (dif t)) omega) vc(e)_theta
$

#connection[与圆周运动的联系][
  若 $r = R$ 为常量，则
  $
    (dif r) / (dif t) = 0, quad (dif^2 r) / (dif t^2) = 0
  $
  从而
  $
    vc(v) = R omega vc(e)_theta
  $
  $
    vc(a) = -R omega^2 vc(e)_r + R alpha vc(e)_theta
  $
  当进一步有 $alpha = 0$ 时，就退化为前一节的匀速圆周运动公式。
]

#connection[纯径向运动][
  若 $theta$ 保持不变，则
  $
    (dif theta) / (dif t) = 0
  $
  因而
  $
    vc(v) = ((dif r) / (dif t)) vc(e)_r, quad vc(a) = ((dif^2 r) / (dif t^2)) vc(e)_r
  $
  这时运动退化为一条直线上的往复或伸缩运动。
]

#example[为什么加速度里会出现 $2 ((dif r) / (dif t)) omega$][
  这一项来自“径向变化”和“角向转动”同时存在时的耦合。质点一边远离或靠近原点，一边又在转动，于是切向分量不再只是 $r alpha$，还要额外加上
  $
    2 ((dif r) / (dif t)) omega
  $
  它反映的是旋转基矢带来的附加变化。
]

= 自然坐标系

#definition[自然坐标系][
  对沿平面曲线运动的质点，在其轨迹上每一点都可引入一组随运动一起变化的单位矢量：切向单位矢量 $vc(e)_tau$ 与法向单位矢量 $vc(e)_n$。以前者沿运动方向，后者指向曲线凹侧，这组坐标系称为自然坐标系。
]

自然坐标系的优势在于，它直接贴合轨迹本身。速度天然沿切线方向，而加速度则自动分解为“改变量大小”和“改变方向”这两部分。

#notation[弧长坐标与速率的来历][
  设轨迹用直角坐标表示为
  $
    vc(r)(t) = mat(x(t); y(t))
  $
  在极短时间内，位移矢量为 $dif vc(r)$，其长度定义为弧长元 $dif s$，因此
  $
    (dif s)^2 = (dif x)^2 + (dif y)^2 = ip(dif vc(r), dif vc(r))
  $
  从而
  $
    dif s = abs(dif vc(r))
  $
  于是速率自然定义为
  $
    v = (dif s) / (dif t) = abs((dif vc(r)) / (dif t)) = abs(vc(v))
  $
]

在自然坐标中，位置不再靠固定坐标轴描述，而是更关注质点沿轨迹前进了多少，以及轨迹在当前位置弯曲得有多厉害。

#theorem[切向单位矢量的定义][
  切向单位矢量定义为位移方向对弧长的导数：
  $
    vc(e)_tau = (dif vc(r)) / (dif s)
  $
  因而
  $
    abs(vc(e)_tau) = 1
  $
]

#proof[为什么它是单位矢量][]
由
$
  dif s = abs(dif vc(r))
$
可得
$
  abs(vc(e)_tau)
  = abs((dif vc(r)) / (dif s))
  = abs(dif vc(r)) / dif s
  = 1
$
所以 $vc(e)_tau$ 的确只记录方向，不再含有长度信息。

#definition[法向单位矢量与曲率半径][
  因为 $vc(e)_tau$ 是单位矢量，它随弧长的变化只能体现在方向上。对恒等式
  $
    ip(vc(e)_tau, vc(e)_tau) = 1
  $
  对 $s$ 求导，得到
  $
    ip(vc(e)_tau, (dif vc(e)_tau) / (dif s)) = 0
  $
  所以
  $
    (dif vc(e)_tau) / (dif s)
  $
  必与 $vc(e)_tau$ 垂直，它的方向定义为法向单位矢量 $vc(e)_n$，并记
  $
    (dif vc(e)_tau) / (dif s) = 1 / rho vc(e)_n
  $
  其中 $rho$ 称为曲率半径。
]

等价地，若记曲率为 $kappa$，则
$
  kappa = abs((dif vc(e)_tau) / (dif s)), quad kappa = 1 / rho
$
曲率越大，说明轨迹转弯越急；曲率半径越小，说明轨迹越弯。

#theorem[速度公式][
  在自然坐标系中，速度总沿切向，且
  $
    vc(v) = v vc(e)_tau = ((dif s) / (dif t)) vc(e)_tau
  $
]

这也可以直接由链式法则得到：
$
  vc(v) = (dif vc(r)) / (dif t) = (dif vc(r)) / (dif s) (dif s) / (dif t) = v vc(e)_tau
$

#theorem[加速度公式][
  在自然坐标系中，加速度可分解为
  $
    vc(a) = (dif v) / (dif t) vc(e)_tau + v^2 / rho vc(e)_n
  $
]

#proof[为什么会分成切向和法向两部分][]
由
$
  vc(v) = v vc(e)_tau
$
对时间求导，得到
$
  vc(a) = (dif vc(v)) / (dif t) = (dif v) / (dif t) vc(e)_tau + v (dif vc(e)_tau) / (dif t)
$

第一项来自速率大小的变化；第二项来自速度方向的变化。利用
$
  (dif vc(e)_tau) / (dif s) = 1 / rho vc(e)_n
$
和链式法则，有
$
  (dif vc(e)_tau) / (dif t)
  = (dif vc(e)_tau) / (dif s) (dif s) / (dif t)
  = v / rho vc(e)_n
$
代回即得
$
  vc(a) = (dif v) / (dif t) vc(e)_tau + v^2 / rho vc(e)_n
$

#notation[切向加速度与法向加速度][
  常把
  $
    a_tau = (dif v) / (dif t), quad a_n = v^2 / rho
  $
  分别称为切向加速度与法向加速度，因此
  $
    vc(a) = a_tau vc(e)_tau + a_n vc(e)_n
  $
]

#insight[两部分各自描述什么][
  + 切向加速度描述速率如何变快或变慢。
  + 法向加速度描述速度方向如何转弯。

  所以即使速率不变，只要轨迹弯曲，仍然会有法向加速度；即使轨迹是直线，只要速率变化，仍然会有切向加速度。
]

#connection[与匀速圆周运动的联系][
  对半径为 $R$ 的匀速圆周运动，有
  $
    rho = R, quad (dif v) / (dif t) = 0
  $
  从而
  $
    vc(a) = v^2 / R vc(e)_n
  $
  这正是前面得到的向心加速度公式。
]

#connection[与直线运动的联系][
  若轨迹是一条直线，则可看成
  $
    rho -> oo
  $
  因而
  $
    a_n = v^2 / rho -> 0
  $
  此时加速度只剩切向分量：
  $
    vc(a) = (dif v) / (dif t) vc(e)_tau
  $
]

#example[如何快速判断加速度方向][
  若某时刻质点速率增大，则切向加速度沿 $vc(e)_tau$；若速率减小，则切向加速度沿 $-vc(e)_tau$。无论速率是否变化，只要轨迹向某一侧弯曲，法向加速度总指向该侧的曲率中心。
]
