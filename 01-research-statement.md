---
title: Broad Fellows Application
author: Eric J. Ma
affiliation: MIT
csl: pnas.csl
header-includes:
- \usepackage[nomarkers]{endfloat}
---

## Research Statement

**Long-term research goals:** My long-term research interests are to build the necessary experimental and computational infrastructure required to make real-time pathogen surveillance, prevention and treatment a *rationally predictive endeavour*. The core problems I have identified are: (a) the paucity of biochemical phenotype data that inform mechanistic knowledge of risk and pathogenesis, and (b) interpretable models to map from sequence data to quantitative measures of pathogen risk.

**Research background:** My research background, which has included both experimental and computational components, has provided me with an excellent set of tools with which to tackle this problem. My experimental training was in synthetic biology, where I spearheaded the formation of the 2009 UBC iGEM team. We built an analog threshold sensor in *E. coli* (named the "Traffic Light Sensor")[^traffic], winning a Gold medal standing with the team in our first year of competing. My contributions included sourcing $6000 in student stipends, $500 in DNA synthesis sponsorship, and aiding in securing $10,000 from the UBC Teaching and Learning Enhancement Fund for the following competition year. I designed and executed experiments with my teammates, and delivered our final presentation at the iGEM Jamboree. I also served as an advisor to the 2010 UBC and 2011 UCSF iGEM teams.

[^traffic]: http://2009.igem.org/Team:British_Columbia

I later switched into computational research under Prof. Jonathan A. Runstadler. My first area of focus under has been on influenza disease ecology. Together with my colleagues in the Runstadler lab, we have investigated the role of reticulate evolutionary processes in influenza virus host switching and seasonal persistence [@Ma:2016ht; @Hill:2016dh], and I have won poster presentation awards (CEHS 2014, Broad Retreat 2015) based on this work. I developed a heuristic algorithm that enabled us to (1) identify reticulate evolutionary events at scale while accurately approximating phylogenetic relationships, and (2) quantitatively measure the importance of reticulate evolutionary processes in ecological niche switches (Figure {@fig:reticulate}).

The second (and more recent) focus is on the prediction of viral phenotype from genotype, otherwise known as phenotypic interpretation of genomic data. This is where my current efforts are focused, enabled through collaborations with Profs. David Duvenaud (U Toronto) and Paul Blainey (MIT/Broad Institute), and through the Broad *Next10* program. My colleagues and I have observed that single point mutations in a viral protein are sometimes necessary but not always sufficient for accurately predicting quantitative protein phenotypes. To solve this problem, we have identified the following needs:

1. Systematically measured paired genotype-phenotype data with modelled uncertainty in measurements.
1. Machine learning algorithms capable of explicitly modelling interactions between amino acid positions.

A key contribution that we expect to emerge from this work is a gold-standard template for predicting viral risk from sequence; **this area of focus is the centrepiece of this Broad Fellows application**.

Apart from these two main areas of focus, I have also collaborated with colleagues in the use of Bayesian phylogenetic methods to study influenza movement and reassortment in wild animals [@Bahl:2016efa; @Bui:2015bja], and performing statistical analysis methods of viral phenotype data [@Hussein:2016cj; @Hussein:2016dc].

### Broad Fellows Vision

As a Broad Fellow, I envision building the necessary experimental and computational systems for making phenotypic interpretation and risk determination from viral genomic data a timely, rational and predictive endeavour (Figure @fig:surveillance).

A goal of viral genomic surveillance is to help guide appropriate interventions, given sequence data. Risk determination is a necessary step. Health risk is partially determined by a host's response to infection, and partially determined by a virus' biochemical phenotypes. Virus biochemistry is, in turn, determined by its proteins' sequence. While there are numerous studies describing the biochemical and physiological characterization of virus mutants, rational risk determination based on sequence remains elusive, and experiments with conflicting effects cannot be easily compared, because of non-standardized controls, protocols, and measurement metrics. As a field, genomic surveillance groups lack the capability to accurately predict phenotype from genotype [@Holmes:2016hc]. *At its essence, I see this phenotypic interpretation issue as essentially a machine learning problem that lacks data.* To solve this problem, my goals are two-fold:

1. To be able to rapidly phenotype a virus while minimizing experimentation on its live form, and
2. Develop interpretable machine learning algorithms that predict phenotype from sequence.

With my team, I envision building a real-time phenotype interpretation and risk determination dashboard for viral genomes, backed by experimental data, powered by deep learning, yet user-friendly for use by epidemiologists, physicians and policy-makers alike. In pursuit of these goals, I plan to develop 2 main project thrusts, which I will elaborate on below.

### Project Thrust 1: Develop scalable, safe and standardized assays for phenotyping viruses.

***Core problems:*** I believe that the next frontier in real-time pathogen surveillance is to deduce the risk profile of a virus from its sequence. Doing so can help rationally guide medical and epidemiological decision-making in the event of new outbreaks. It is possible now to sequence a new pathogen within 24 hours of isolation [@Quick:2016kf], and the technology enabling this is being rapidly improved [@Loman:2015dx; @Jain:2015ij; @Sovic:2016bn; @Quick:2016kf; @Quick:2015ko]. Studies that use sequence data tend to be limited to mapping the transmission and evolutionary dynamics of the virus [@Park:2015cw; @Dudas:2015ela; @Gire:2014fk], and shy away from making phenotypic predictions [@Holmes:2016hc]. With the exception of antigenic evolution [@Bedford:2014bfa; @Smith:2004jc], the state-of-the-art in phenotypic interpretation remains limited to the identification of single amino acid substitutions that are experimentally correlated with (on an ad-hoc basis) some "risky" phenotype (e.g. influenza polymerase replication rate [@Song:2014bu; @Jagger:2010cj; @Li:2009fk; @Hussein:2016dc] and neuraminidase drug resistance [@Paradis:2015bh]).

Amongst the cited studies above, it is evident that there are conflicting effects for so-called "famous" mutations. For example, E627K in the influenza PB2 protein has been described as being an attenuator [@Jagger:2010cj] and activator [@Hussein:2016dc] of replication and pathogenicity, depending on the background genotype and experiment. Moreover, the absence of E627K can be compensated by mutations at other amino acid positions [@Song:2014bu]. As another example, the fitness effects of neuraminidase I223 mutations have been described as neutral [@Pizzorno:2012er] and disadvantageous [@Paradis:2015bh], again depending on the genetic background of the virus. Systematic and standardized measurements across all known viral protein genotypes are needed to disentangle these seemingly conflicting results. It is clear that the missing link is a systematically measured and standardized phenotype dataset paired with sequence information.

***Proposed work:*** In the first project thrust, my team will systematically measure influenza virus protein variants and their epidemiologically-relevant phenotypes. We will begin with the influenza neuraminidase, which has the signatures of low-hanging fruit:

1. It has an epidemiologically-relevant phenotype, drug resistance.
1. The phenotype can be measured with an established fluorescence-based biochemical assay.
1. The assay is simple enough to be amenable to robotic liquid handling.
1. The phenotype has yet to be systematically measured.

In order to generate protein variant libraries, we will use a two-pronged approach. To learn from historical data, we will use DNA assembly and synthesis methods to create a rational library of existing neuraminidase variants in the Influenza Research Database. To pre-emptively explore genotypic space, we will generate random mutants from contemporary neuraminidase variants that have been sampled in the past year, and sequence the variants that exhibit large changes in neuraminidase resistance.

We will also characterize the influenza polymerase RNA replication rate using a luciferase-based assay. The polymerase replication rate is directly related to viral load, and has been implicated in pathogenic phenotypes; it also fulfills the same four criteria outlined for neuraminidase drug resistance. With colleagues in the Blainey lab, we are also currently exploring alternative assays for polymerase replication that can be conducted at a fraction of the cost, funded by the Broad *Next10* program.

As a "stretch goal" within the Broad Fellows timeframe, with my team I will explore the feasibility of leveraging the influenza virus' genetic systems to develop mammalian systems for continuous evolution, inspired by PACE [@Esvelt:2011cv]. This may allow us to pre-emptively explore the influenza genotype space faster than manual random mutagenesis, and may also be leveraged as a tool for evolution of proteins that require mammalian cellular modifications to be functional.

One fundamental problem any research group dealing with high throughput measurement will face is determining the number of replicate measurements that are required. In preliminary work partially supported through the Broad *Next10*, I have developed a simple Bayesian statistical framework [^bayesian] for analyzing high throughput data, and used it with statistical simulations to empirically determine the number of replicate measurements necessary for accurate phenotyping (Figure @fig:accuracy). This work, in which a draft version is available as a pre-print on BioRxiv [@Ma:2016fl], has informed the design of existing assays in our group. With the neuraminidase resistance data generated, we will use this framework to model the uncertainty associated with the measurements, transparently report them as the posterior distribution of credible neuraminidase values given the measurement data, and leverage them in the machine learning models developed in Aim 2.

[^bayesian]: https://github.com/ericmjl/bayesian-measurement-paper

Concurrent with ongoing systematic testing of the influenza polymerase, I will also explore the extension of this phenotyping system to other viruses. In doing so, I aim to develop a modular, plug-and-play phenotyping system for rapidly phenotyping emerging viral outbreaks as they occur. In the long run, the goal is to develop a toolkit of standardized and scaled phenotyping assays for multiple phenotypes across multiple viruses.

The data that my team will generate will have advantages that stand in contrast to the current available data. Firstly, it will be data relevant to understanding the **mechanistic** underpinnings of influenza risk and pathogenesis. This stands in contrast to more easily collectable proxies, such as the number of influenza-like illnesses (ILI) per year and viral load in patient cohorts, both of which are far removed from pathogenesis mechanisms. Understanding the biochemical underpinnings of pathogenesis also opens opportunities for the development of drug treatments. Secondly, the data will be **standardized**, allowing for easier inter-comparison between genotypes. This stands in contrast to the currently available phenotyping data, which are measured ad-hoc and difficult to compare because of the use of non-standard baseline controls. Finally, unlike current gold standard datasets (e.g. the HIV drug resistance database, which reports single values per genotype), by explicitly measuring uncertainty we will improve scientific **transparency**, and including them in machine learning applications will allow for propagation of uncertainty to final predictions.

***Collaborations:*** I anticipate partnering and leveraging the Chemical Biology and Genomics Platforms to accelerate the experiments described above.

***Short-term milestones:*** In the spirit and interest of open science, the protocols and data generated will be released freely through a web interface hosted on the Broad Institute, available for the research community through a web-based interface, and publicized via open access publications (e.g. in Scientific Data, a Nature Publishing Group journal). All derivative publications will be deposited on pre-print servers (BioRxiv) and published in open-access venues.

### Project Thrust 2: Develop and deploy machine learning models that predict quantitative biochemical phenotype from sequence.

***Core problems:*** I believe that machine learning is the key to interpretably map genotype to phenotype. While machine learning algorithms have been used to predict protein properties from sequence [@Wang:2003cg; @Kjaer:2008kc; @Walsh:2015cc; @Prosperi:2009ua; @Hepler:2014fy; @Attaluri:2012uea], as of now, current algorithms are:

1. Unable to accept variable length sequences as inputs
1. Require the inference of epistasis rather than explicitly accepting it as part of the input, and
1. Lack the capability to produce uncertainty estimates for new predictions.

These hinder progress towards a rational evaluation of a virus' risk.

Variable length inputs are a problem because viruses are capable of evolution, and insertions and deletions form part of their evolutionary trajectory. Yet, machine learning algorithms require fixed-length inputs, and that inherent limitation prevents many numerical forms of protein sequence (e.g. one-of-K encodings, or a sequence of amino acid pKa values) from being used as inputs. Interpolation has been proposed [@Heider:2011bf], but is a form of data compression (or expansion) that loses the original information. Multiple sequence alignments do not fundamentally solve this problem either, as a new alignment needs to be produced when a new protein sequence of a new length arises, and there are no good/established numerical representations of "gaps". Circumventing these problems will allow us build streamlined pipelines for general purpose machine learning on proteins.

Additionally, proteins are not merely strings of amino acids chained together, but fold into complex, 3-dimensional structures in which amino acids interact with one another. Such interactions are not captured by the the linear amino acid sequence, and have to be statistically inferred. Yet, where the crystal structure of a protein already exists, and homology models can be constructed, inferring interactions is unnecessary and may even be inaccurate. Designing a machine learning algorithm that explicitly learns from the 3D protein structure will enable accurate machine learning on protein variants. This will allow us to interpretably infer the biochemical interactions responsible for phenotypes, and move beyond single point mutations to biochemical characteristics underpinning phenotypic changes.

Finally, current algorithms produce point estimate predictions, but have no notion of uncertainty in the predictions. This can pose a problem for decision-makers. Suppose predicted drug resistance point estimates for a circulating virus population lay below some threshold, permitting the deployment of drug for treatment, but the uncertainty was large enough that it could have well been, in reality, a resistant virus. In this case, if we knew that the uncertainty was large, we would likely have triaged the virus for deeper experimental phenotyping to confirm its phenotype, rather than risk the further spread of a drug resistant virus.

***Proposed work:*** As a Broad Fellow, I will leverage my mastery of probabilistic programming to develop, with collaborators, a Bayesian deep learning algorithm for use with our influenza phenotyping data. This deep learning algorithm will solve the problems outlined above: it will accept variable-length inputs, and produce uncertainty estimates in predicted values, thereby allowing us to rationally monitor an outbreak in real-time.

As groundwork for this, I have been collaborating with Prof. David Duvenaud (Univ. Toronto). He has developed a convolutional neural network for learning properties of small molecules, such as solubility and cellular toxicity. I have extended this to protein structures, and have been developing prototype software packages to accomplish this, including software that converts protein structures into a graph representation [^protein_nets], and a re-implementation of his convolutional neural network with a more consistent programming interface [^deepnets]. In a proof-of-principle, I have successfully trained an alpha version of this neural network on HIV-1 protease drug resistance to fosamprenavir (FPV), and used it to identify known amino acids clusters that are positively or negatively associated with FPV resistance (Figure @fig:hiv).

[^deepnets]: https://github.com/ericmjl/protein-convolutional-nets/
[^protein_nets]: https://github.com/ericmjl/protein-interaction-network/

The current implementation currently produces point estimate predictions. I will use probabilistic programming to implement a Bayesian version of the algorithm, allowing us to propagate the uncertainty associated with systematic measurements (Aim 1) to uncertainty in predictions.

Following this, I will use data generated from Aim 1 as training data for the deep learning models developed here in Aim 2, and use this to generate global and historical predictions of influenza drug resistance and replication rate potential. By training regression models on multiple viral phenotypes, we will gain the capacity to quantitatively map the risk profile of newly emerged viruses. As a long-term goal, I envision that these models, which are trained on data mechanistically relevant to influenza pathogenesis, can form the foundation of hierarchical models of pathogen biology and risk.

***Collaborations:*** I anticipate continuing to collaborate with David Duvenaud as he continues his tenure as a new faculty member at the University of Toronto. Additionally, I expect that this project thrust will open up new computational avenues for Broadies to leverage, either in the form of workshops on machine learning (which I have delivered at the Broad before) or through research collaborations.

***Short-term milestones:*** My team will release the protein interaction network and graph fingerprinting software alongside manuscripts in open access publication avenues. All of the software will be freely available and archived in long-term repositories (e.g. Zenodo) in accordance with open science principles.

## Forecasted Impact

Viral infectious agents cause loss of life, productivity, and health, and as a research field, we are only recently building the capacity to monitor viral outbreaks in real-time. With the research program that I am proposing, I foresee multiple levels of impact, described below.

***Societal Impact:*** My vision is to build a real-time dashboard for epidemiologists and policymakers. This dashboard will be powered by deep learning models, capable of producing accurate and precise estimates of a virus' risk as soon as it is sequenced. I also aim to develop the proposed phenotyping platform to be ready for experimentally determining the phenotype of newly emerged viruses (especially those which have large uncertainty in their predictions) in real-time. These actionable data will enable epidemiologists and policy-makers to execute data-informed interventions.

***Industrial Impact:*** In order to pre-emptively identify viral proteins that exhibit resistance to newly developed drugs, we can create new synthetic protein variants using contemporary strains as the starting sequence. Medicinal chemists may be able to leverage the phenotyping platform to pre-emptively test new versions of their drugs and validate their effects against the phenotype catalogue.

***Scientific Impact:*** By using predictions from our trained deep learning models, we may re-examine historical trends of neuraminidase drug resistance over time, possibly providing greater resolution when compared against the use of H275Y and I223V molecular markers of resistance. We may also combine our predictions with Bayesian phylogenetic modelling to better understand how public health interventions affect the evolutionary trajectory of viral pathogens with respect to their epidemiologically relevant phenotypes. This will further our basic understanding of pathogen evolution. This is a low-hanging fruit which I hope to pursue as soon as we have the data available.

***Broad Community Impact:*** With the proposed scalable assays developed, I foresee collaborating with other groups at the Broad who are interested in drug repurposing efforts. For example, with our proposed phenotyping system, we may be able to identify combinations of existing non-toxic molecules that target multiple components of flu simultaneously, reducing the likelihood of viral drug resistance. Moreover, our algorithm efforts and data sharing practices may open avenues for collaboration with the Data Science and Data Engineering Initiative at the Broad.

## Planned Funding Avenues

In order to sustain this work beyond the Broad Fellows period, I will solicit funding from a variety of government and philanthropic sources. The Broad Next10 program is already supporting this work through two grants totalling $80,000. Apart from the NIH R21 proposal that I led with my advisor Jon and collaborator David, I foresee this being of interest to the DARPA Prophecy program, NIAID, and companies interested in drug development. Finally, to acquire a continued revenue stream for the research and development work, I will explore the use of funding models through application programming interfaces (APIs) that allow access to value-added data and models, which may be of interest to other academic and commercial entities [@CheckHayden:2016ip; @CheckHayden:2013kb].

## Conclusion

My long-term goal is to make surveillance a holistic and rationally predictive endeavour, and that necessitates open participation by and access for the surveillance community. My team will use a mix of high throughput experimentation with Bayesian deep learning to achieve this. We will publicly release this systematically measured pathogen phenotype data (i.e. "The Broad Viral Phenotype Collection"), with a view towards positively impacting pathogen genomic surveillance efforts and **setting the standard for rational phenotypic interpretation**.

---

The full version-control history of this research statement can be found online [^broad].

[^broad]: https://github.com/ericmjl/broad-research-fellows

<!-- Figures -->

![Importance of reticulate evolutionary events in switching between viral hosts. Viral hosts are considered "ecological niches" for the influenza virus. As the quantitative evolutionary distance between viral hosts increases (x-axis: host COI (cytochrome oxidase I) distance), the greater the prominence of reticulate evolutionary events in these host switches (y-axis: proportion of reassortment events amongst all transfers between viral hosts). Figure from Ma et. al., PNAS (2016). ](./figures/reticulate.pdf){#fig:reticulate}

![Genomic surveillance data can guide epidemiological interventions, but intermediate phenotypic data are required to bridge the crucial gap mapping genotype to biochemical phenotype. To highlight an example, the influenza nueraminidase (NA) is targeted by oseltamivir (Tamiflu), and can develop drug resistance, thereby decreasing the effectiveness of the drug and increasing the capacity of the virus to replicate in the presence of drug treatment. Machine learning models can be trained to accurately learn the complex mapping from genotype to phenotype, with quantified precision. Having accurate and precise predictions can impact policy decisions, such as whether to deploy stockpiles of drugs or to shift focus to other interventions. ](./figures/summary-figure.pdf){#fig:surveillance}

![Simulated high throughput assay measurement accuracy (fraction of true values in 95% highest posterior density) as a function of number of replicate measurements taken. Around 5-6 replicate measurements are needed to achieve a median of 90% accuracy in readings, which would be a significantly greater increase compared to the commonly-accepted baseline of 2 replicate measurements. Figure is taken from Ma et. al., BioRxiv (2016).](./figures/accuracy.pdf){#fig:accuracy}

![Deep convolutional neural network learns hydrophobic patches predictive of HIV-1 drug resistance to FPV. **a.** (left) Predicted drug resistance values vs. actual, using convolutional neural network. (right) Training error as a function of training number. **b.** (left) Network of hydrophobic HIV-1 protease residues most predictive of resistance to FPV, learned by the neural network. Dark blue: highly predictive; white: weakly predictive. (right) Homology model highlighting location of highly predictive residues and its neighbors. Figure from poster on figshare: https://dx.doi.org/10.6084/m9.figshare.4028376.v1 ](./figures/most-activating.pdf){#fig:hiv}

## References
