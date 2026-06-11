---
title: the black book of quantitative finance
source: https://www.youtube.com/watch?v=AKIkhuR7HYY
author:
  - "[[jetbundle]]"
published: 2026-06-05
created: 2026-06-09
description: "discord: https://discord.gg/CJ65DWynQy#quantitativeresearch #physics #mathematics #trading"
tags:
  - clippings
  - Quant
  - QuantitativeFinance
  - QuantitativeResearch
---
![](https://www.youtube.com/watch?v=AKIkhuR7HYY)

discord: https://discord.gg/CJ65DWynQy  
  
#quantitativeresearch #physics #mathematics #trading

## Transcript

**0:01** · How's it going, everybody? So, this is going to be a little bit of a pun on the green book of quantitative finance.

**0:07** · Um So, what we're going to do is try to um think about the goals of what a quant does uh in the terms of the modeling department, okay? So, uh basically, I think there's about three questions that you should be able to answer as a quant. Um You should be able to answer all three of these things if you were to give a blackboard lecture, right?

**0:31** · And if these three questions are sufficiently answered, then you have a successful model.

**0:37** · So, um And it doesn't matter really how the returns are cuz I mean, for quants like returns are just they're just numbers. I mean, they're just ones and zeros on a screen. We I mean, we have number generators, like random number generators at banks and just like, you know, mess with people's money all the time, you know, cuz it's funny.

**0:58** · So, like we're not attached to these things.

**1:02** · So, um you can think about a state living on a smooth manifold M.

**1:10** · Okay? And uh prices, order books, volatility surfaces, liquidity profiles, all of those things are charts.

**1:19** · Um they're coordinates and projections and nothing more.

**1:22** · And we answer how these things change as flows on the manifolds or on the jet bundles of the manifolds if you have any respect for curvature or uh acceleration. Um And inference itself becomes uh just a simple map out of some compressed geometry.

**1:40** · All right? And you can think about the And by the way, like this is semi This is like a linear combination of like AI slop. Um it just inspires me.

**1:51** · Um but, you know, the actual work like that I do, you know, I mean, uh yeah. I don't really feel like talking about it so but I'll give you guys this uh not mindset if you will, but this this approach to the problem solving. Um if you will, okay?

**2:12** · Now, um the framework here it doesn't care about your asset class.

**2:19** · So, the same objects themselves will describe rates, equities, and portfolios.

**2:24** · And once you have some chart that is fixed and some projection um value to value like some projection value evaluation of a manifold on system real number that appears in your state machine.

**2:40** · Because that's all computers are, that's all data is. It's just ones and zeros and how we choose um to represent them is extremely important.

**2:49** · So, these three questions um most normies, even people in industry like industry quants, some people are just hyper-focus on like one of these questions or I mean the most important question that everybody emphasizes is what can we infer from this What can we infer from this model, right?

**3:07** · Yeah, most people just start with the third question and they just be like, "Yeah, you know, the first two of questions are like empirical seasoning to our model."

**3:14** · But that order is completely backwards because structure is going to tell you what can even be measured without contradiction.

**3:22** · And then the dynamics is going to tell you which trajectories are real on the manifold and then inference itself is a final garnish. I mean, it's it's it's easy.

**3:31** · So, it becomes almost trivial once uh how you choose to compress your data is honest. So, all the signal processing, pricing models, alpha factories, trading systems, they're going to be subordinated subordinate to the sequence um in the following uh you know, demonstration, whatever if you will. Um so, you know, cope with that.

**3:52** · \[laughter\] So, um, you think first structurally about about the market. Um, and then you're going to want to think dynamics and then inference. So, equivalently on a cipher like basically if you wanted to decipher this through, um, we would talk about the native jet bundles that stay intrinsic to the manifold and talk about invasive jet lifts onto an ambient Euclidean space, um, for computation and then project that back like the civilized people.

**4:21** · And then when you have symmetries that commute, um, symmetries themselves in the data, you can have the language you can develop the language of a billion Lagrangians to give you god-tier compression into orbit labels and then quotient out the orbits or quotient out the um, extraneous things that normal people would just call noise. Um, so no system is going to be allowed to skip this pipeline here, period. That we construct.

**4:48** · Okay? So, again, we're just going to think about um, jet bundles themselves that are evolving uh, through time, K jets, um, that then, you know, allow us to, um, define some dynamics and then define some inference maps, okay?

**5:05** · And we'll go we'll go further into detail in how to think about this, but the first thing to really establish is that when you look at a market, right? The price as a vector, it's not a state. Um, two paths can agree um, on every price coordinate and still live in completely different jets.

**5:24** · So, liquidity curvature, inventory momentum, uh, holonomy, all of these things, traditional models that equate state with price are quietly quotienting out the good stuff. And again, they call that remain remainder stuff noise, which is a classic, right? Oh, it's just noise, you know. Dynamics, um, itself is not a loot box in Fortnite of, uh, you know, indicators.

**5:48** · You will have uh, for the of, you know, uh technical analysis signal indicators that just like randomly, you know, give may or may not give good statistics or whatever. Um at leading order, it's going to factorize into conserving symplectic and dissipating contact and coupling gauge pieces together. So, you want to be able to compose vector fields on the manifold and you do not want to stack features um in the real numbers.

**6:18** · Um or in Euclidean space and pray that, you know, you're going to have a I don't know, orthogonality magically appear. You're just going to get a degenerate like system. So, what you need to do is, in order to even create some kind of learning or some kind of um machine um some singular um machine learning on this compressed state, you uh need to quantify the topology, spectrum, and commutators as coordinates of Z, not as some decorations on some neural net, okay?

**6:49** · And so, um that architecture is going to ignore Z and, you know, it's not some data-driven thing. It's solving the wrong problem with extra steps. That's kind of the the problem, I guess, with all of these massive uh wasteful computational landscapes that people have been building. So, um what we need to do instead is define the jet of the state in local coordinates on M.

**7:17** · Um this is going to be um K is going to be the the simplicial neighborhood and the topology of the nearby states themselves. We want to quantify that. And then we're going to want to um define the latent uh geometry. And the latent geometry itself is going to give us our regimes of the market and regime coordinates.

**7:37** · Then what we can do is um define an orbit space to reduce the dynamics under some symmetry and quotient out of symmetry that is within the data itself. And then, um, we look at observable maps, so forecasts, hedge decisions to the entire entire chain here. This is This is the name of the game. This is, um, what I hope to accomplish in today's video. So, um, yeah, I mean, I don't want to repeat myself.

**8:06** · So, the blackboard quant, right? He's going to start always with a smooth manifold, not a price.

**8:13** · Okay?

**8:13** · Um, and some real real numbers. And observations themselves, um, are going to be projections.

**8:21** · Okay?

**8:22** · And the ambient space, um, I mean, and and here's kind of what I mean by a projection. You have some projection of X, um, some element on the manifold, and maps, uh, to the real numbers. Okay? And this evaluation itself is induced. Um, and we we can think about, um, and of course, where X is an element of this lower manifold.

**8:51** · Um, so the jet, also, of this manifold explains which deformations those charts, um, are dynamically consistent themselves. So, it's more of kind of a logical operation that, um, is extremely powerful. Um, I'm not going to waste more time on this. Let's talk about ambient space. So, the ambient space, and by the way, I mean, of course, you're on YouTube, but you can pause the video anytime to read.

**9:18** · Um, the ambient space and realization of this ambient space is to embed, uh, some manifold, um, into another manifold with this new manifold being isomorphic to the real numbers in N dimension, or in N dimensions, where N, uh, becomes extremely, um, uh, a large when com- compared to the regular, um, mapping here with our uh, little in, okay?

**9:46** · So, um, you want to work intrinsically when possible and and extrinsically, um, when you have to, you know, cut something out, okay? So, this is, um, just a way to think about native and invasive jets. So, a lone point by itself is very useless. So, you always want to lift to computationally, it's good practice to lift to jets and intrinsic derivatives are going to be charts that are adapted to in. So, um, and it's clean and it's canonical.

**10:17** · And you can think about, um, invasive jets as these different these differentials in ambient space and enforce constraints via the second fundamental form. Where, you know, you have these normal bundles, um, or sorry, you have these uh, this uh, yeah, this this normal, um, coordinate here and then, uh, some embedded uh, some properties that are enforced by this uh, um, state itself. So, in general, how you want to think about this is if you have uh, your state being, you know, x, x. and x.., right?

**10:50** · Where by the way, the dots are the temporal derivatives of the state. Um, well, you can think about this as physics, right? I mean, it's just position of a lot of velocity and then the curvature, right? So, moving averages themselves don't magically become jets. That's another thing to keep in mind.

**11:10** · Now, if you have jets with, um, again, for a native jet bundle and, uh, uh, invasive jet bundle, you can formalize this further as a bundle of K jets with curves, um, for some considerable, um, you know, arbitrary amount, um, in M that agree that map to M that agree through order K intrinsically. Okay?

**11:36** · And so with these logical agreements, you can then use the Levi-Civita connection of a chosen metric when the acceleration must be covariant. Now, an invasive jet bundle again is embedded in E, but one can use the J uh the K jet of on of E itself with constraints from the normal bundle and give a fundamental a second fundamental form here.

**11:55** · And the invasive jets will be computationally convenient, but they will introduce extrinsic artifacts modeling um sec is back the modeling step itself is projection back uh to the tangent manifold in the intrinsic jet space. Okay?

**12:11** · So, for K um is equal to two, your state here again is just just this is going to be a compressed notation here. And again, it's just position, velocity, and curvature as these um uh uh intrinsic and extrinsic type of having these extrinsic type of properties.

**12:32** · Okay? The jet the jet space itself uh turns basically these point clouds um into these filtered um simplicial complexes. So, you can think of the Vietoris rips and check um topologies. There's also um persistent homology that'll love us give us the idea of barcodes. Um but yeah, I mean this this is basically how you would want to visualize a jet.

**12:56** · Um essentially as defining um I I mean essentially it would just define some kind of uh like uh some states, if you will. Um that give us the positions, velocities, and accelerations um in general, and then some kind of conformal transformation, if you will.

**13:17** · Now, um so for the Vietoris uh rips complex, you can think of um the persistent homology homology to give us long bars and quantify the real structure in the data and then shorter bars that give us microstructural \[laughter\] And these uh coordinates will be all on Z, but um you know, so that would be the persistent homology.

**13:47** · And uh you can see here like the birth and death of these particular uh topological um modes um are interesting because the um Hadwiger value valuations here are integral geometry and the information geometry on the statistical manifold um

**14:07** · would give us these uh formalizations um from how we're choosing to uh discretize our uh space um and describe, you know, the nearness of, you know, these kind of primitive mathematical objects. Um this becomes really abstract, but we're basically trying to structurally um I'm just giving a bunch of options, if you will, for how to think about um these windows or their jets.

**14:36** · And um you know, in terms of these simplicial type complexes, you know, the as this epsilon gets larger and larger, you can get different faces of these uh simplicies. And um you know, there's there's a way to actually quantify this with machines um in a data-driven way. So, you can think also about structural completeness.

**15:02** · Um so if you have Z, you can take a map um here from the jet space um and the jet space is a function of time. And the loss it'll be lossless on invariants in part really in the in the dynamics and trying to describe the dynamics and make inferences.

**15:26** · But, how we can think about this as well is this kind of generalized if we the I'm just showing you that there's a generalized type of Z-score that we have um describe you know statistical significance from the information geometry itself um as well intrinsically um from whatever statistics that comes out of this. And um yeah, Hadwiger evaluations as well. I mean I mean I kind of talked about this.

**15:53** · But, this is how we would choose to um define the measures, and these observations becoming these uh functionals um as as you know volume and curvature as feasible sets in the state space. Okay?

**16:07** · So, um we can now talk about the dynamics. So, evolution itself is going to be a flow um on the manifold with it's not going to be some sequence of candles, you know, that uh you know, you you typically would want to look at if you're looking at you know, financial data. You'd be tempted to look at flow sequence of candles. But, you really want to think about them uh as symplectic flows.

**16:34** · So, conservative pieces um will live on the um dual or the cotangent space uh with Hamiltonian equations, right?

**16:48** · So, that's how you can think about this. And the phase space volume is very sacred in um these uh type of statistical systems that we want to describe. But, we can start here and then, you know, perturb um the symplectic uh basically core in geometry of of what we're trying to achieve for, you know, Q and P where Q and P are just these um particular states.

**17:14** · Um Q can be price um P can be the momentum, you will of the of the of the signed order flow of the market. Um, but what where things get I mean, this is kind of like a physicist will will look at this and know what I'm talking about. And and you know, anybody who's taken a differential class, differential, um, equations class or anything would be able to instantly recognize this.

**17:37** · Um, but this is where things get interesting that I personally find super cool is that when you have symmetry generators, say you have some symmetry that's encoded into the uh, compressed, you know, manifold that we have.

**17:52** · Um, you can say that the systems is going to be a billion and that the action will be be able to factorize. This is more talking to the physicists, but there's something special that we have, um, is called Frobenius' theorem that leads us to integrable foliations and clean reductions or the ability to have a clean reduction to an orbit space.

**18:16** · And Noether charges themselves will label, you can label the leaves of these processes and this is where high-dimensional, um, ideas of of chaotic systems will collapse into something tractable. Um, you can think about the yield curve too with like modes and volatility factors, sector rotations. Mathematics becomes extremely cool. Um, uh, really with this kind of nuclear option of, uh, you know, thinking about a billion Lagrangians in orbit theory.

**18:50** · So, you when you have an approximate approximation, um, or when when some symmetries approximately commute in the market, you get god mode compression.

**19:00** · Um, but when they don't, you have to carry the holonomy. So, that's what will happen here. You'll carry the holonomy of the geometry, which is just, you know, I mean, holonomy is just the the transport of a I mean holonomy it It's a very simple way of thinking about holonomy is just the Levi-Civita connection defining a covariant derivative along some manifold and how much that area arrow rotates, okay?

**19:25** · Um now here's another thing that's very important in financial markets that is a It's fair to mention is rough paths. So rough paths and signatures for some real um non-smooth trajectories. And contact geometry for these um endogenous entropy market making bleed because when when people are making markets there's a thermodynamic there's a thermodynamic thing happening because the market is constantly in this is this is this combustible non-equilibrium system.

**19:59** · So you have to think as well also as gauge connections as for these interactions uh between the basis risk. So here's your curvature. Uh you would have like some curvature two-forms or whatever to measure how badly your orthogonal vectors are failing to commute.

**20:15** · So um again and you can think uh this is a nice way to to view the rough path theory for you know just how you're going to decompose the tensor space of all of these um integrals that like have all of this twisting and torsion.

**20:29** · Um and then also you will have like contact dissipation. So like the the heats of the medium of some you know uh with respect to some how some probability distribution is choosing to evolve. Um you know and and simultaneously being aware of like uh entropy transfer itself. Um this is contact geometry. I mean there's no avoiding it.

**20:55** · So um and you would uh then have to have to define a new quantity um as some cumulative dissipation or irreversibility of the market itself.

**21:07** · Um of something happening and and you know some crash happening and you know you have some bimodal fracture in your distribution something like that right?

**21:14** · All of these observables I'm really getting into the observables themselves um because you know that's what people see right? That's what we when we see a nuke right? Or we see a rocket blow up like you know it's hard to pin down exactly what it was that was the cause of it but you know that's kind of what's happening here the contact structure is going to be able to endogenously um it's going to be able to endogenously um derive that.

**21:46** · So um gauge connections as well um are important um but those things get developed much later.

**21:55** · So how we can think about this um as a connection for the gauge um as for a gauge connection on a bundle for the sorry the connection one form on a bundle over M has a curvature where the parallel transport around a loop um gamma is going to return a holonomy and the non-zero holonomy um means that there's some factor definition that cannot be glued without transition all right?

**22:25** · And so here's like kind of a cool graphic of what how to think about gauge coupling themselves um and yeah I'll just leave it at that.

**22:37** · The dynamics map um of completeness so again this always goes back to the flow so we have some compressed uh geometric state that we dealt with in the first part and this flow here will then allow us to describe the set of observables um and it'll erase persistent classes that has been carried um uh within the states uh being described itself, okay?

**23:10** · Now, um did I miss anything?

**23:12** · Okay, let's go to inference now. Um this is the part that people, you know, you get paid for. I mean, I'm I'm going to be really quick about this because it's really not that complicated. I mean, it looks like in it's \[clears throat\] super complicated, but it's not. You predict basically Z, right? From raw Not Not from raw ticks, but you're going to predict from this uh compression. And you have these maps on geometry themselves.

**23:40** · And there's admissible architectures that will be able to factor these things.

**23:44** · Um and give generalizations of a geometric statement rather than some hope that it's going to do this, okay?

**23:50** · So, you'll look at statistical manifolds. Um you'll look at Fisher Rao inference. Um these are importance. Um Basically, I mean I mean, these uh These These themselves are pretty much well-known in the industry already. So, I mean, it's not really that interesting. Um but you can describe geodesics and uh loss manifolds and all of these things. But what I think is really interesting is um singular models. Now, singular learning theory. Real models themselves are singular.

**24:33** · And you can use something called a log-canonical um threshold lambda. And what this allows us to do is to have smaller lambda to get better generalizations. And it's a purely It is a real log-canonical threshold. It's It's It's a purely uh geometric um triumph over parameter counting.

**24:55** · Every time you have like all of these massive ensembles of parametric um models for, you know, these Bayesian inferencing models and like, you know, they it costs a lot of money to do. But, the geometry itself is going to beat parameter counting every time.

**25:14** · And it's cheaper um and complexity penalty uh becomes a in in the dimension of theta over two, where um where theta itself um and oh, and by the way, regularity and singularity. I talked I talked a little bit about this in the Discord as well. But, regularity and singularity have to do with um uh basically the smoothness of some da- data. Uh and the geometric data will give you those things. Okay.

**25:47** · Um So, yeah, and then you can basically define these particular invariants um and uh you know, the neural nets themselves will just read um from the uh neural nets themselves will just read from, you know, uh some J mapping to case to Z. But, cohomology can also catch the global obstructions to this. And spectral theory on Laplacians can give regimes and time scales for free.

**26:19** · So, that's another thing that's very important to uh think about. And lastly, I mean, geometric prediction itself is first of all, you can define learning on this uh manifold itself. Capacity control is this geometric type of quantities uh that you know, allows us to preserve persistent classes under the flow. But, really, prediction itself is a geometric thing.

**26:49** · Right?

**26:50** · And you can forecast some curve by just integrating this uh or it's stochastic lift with um some function out at the end. And the quality will be judged by the Lipschitz Lipschitz constraints of F along the geodesics.

**27:07** · Right?

**27:08** · And Lipschitz constant Oh, sorry, not con- constraints, constants. Lipschitz constants really are just, you know, upper bounds and lower bounds that have been, you know, estimated. Um particularly with whenever you're dealing with these types of um with these types of uh function spaces. So, linear blends of past prices are chart-wise shortcuts.

**27:30** · And you can really only They're only going to be valid when your compressed um data is going to be affinely embedded in real dimensions um or in Euclidean space and the diffeomorphisms are approximately linear um for the horizon considered. So, there's very rarely um the honest regime for inventory or volatility. And so, you know, the forecast just becomes a geometric segment in the latent space itself. Right? So, it's it just comes out very naturally.

**28:03** · Um and of course, there's a comological co- comological um inferences inference as well. I don't really need to go into that, but um these are other things that could be explored from the latent geometry. And of course, these graph Laplacians um you have gaps between these particular modes um within the neighborhood. Those can also have predictive power.

**28:28** · Now, it just goes back again to structure, dynamics, and inference. And that's it. That's a simple simple physics-grade modeling for markets. Um and this is kind of you guys want to join the, you know, the Discord and be part of the conversations behind this. I don't promise that this YouTube video is going to be up forever because it might take off, but this is basically a physic financial physical modeling for markets.

**28:53** · So, we have manifolds, jets, symplectic reductions to hopefully get approximate symplectic morphisms in our state machines that then define contact dissipation. We also have gauge theory. Persistent homology, singular learning. All of the heavy artillery is now pointed at profit and loss. So, traditional quant finance has spent like 20 years stacking features and hoping for the best. But, what we're going to try to do is just get rid of that entirely.

**29:30** · And the geometry itself was always there. Now, what we need to do is just think about the cipher itself. And that's about it. So, this is the formalization This is the formal kind of pitch, if you will, for the black book of quantitative finance. And yeah, last thing I have to say is