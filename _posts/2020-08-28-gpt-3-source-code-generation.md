---
layout: posts
title: GPT-3를 보면서 생각하는 source code generation
categories:
 - random
published: false
---



최근 OpenAI에서 GPT-3(Generative Pre-trained Transformer 3) 라는 API 와 논문을 공개했다.

https://openai.com/blog/openai-api/

https://arxiv.org/pdf/2005.14165.pdf

GPT-3 가 뭔지 처음 듣는 사람은 아래 데모 영상들을 보고 오자.

https://machinelearningtokyo.com/2020/07/26/10-cool-gpt-3-demos/

GPT-3 는 openAI에서 돈이 필요해서 유료로 판다고 한다. 뭐 모델이 좀 많이 커서 앵간한 회사들은 돌리지도 못할 거라고 하긴 한다.

일단 성능이 상당히 좋아서 관심을 가지고 본 건데 직접 돌려볼 수 도 없고, 그러면 뭔가 개선방향을 생각해 봐도 해 볼 수가 없는 거라 연구 목적으로는 쓸 수 없는 것 아닌가 싶다. 

모델이 어떻게 생겼는지는 논문을 자세히 안 읽어봐서 모르겠지만 이름이 transformer이니 transformer 기반인 것 같고, 파라미터 갯수가 175B 라고 한다. 

일단 데모 영상에서 보여주는 것들 중 내가 주목한 것은 코드 생성이다. 답을 내는 구조는 질문 뒤에 올 답을 예측하는 구조인데 js 코드나 딥러닝 코드도 생성한다. 성능도 그럴싸 해 보이고 다른 것 보다 도메인 별 fine tuning 없이 나오는 결과라는 점이 중요하다. 얼핏 보면 general purpose AI 로 보이기도 한다. 물론 다른 사람들 중 어떤 논리를 가지고 결과를 내는 것이 아니고 데이터를 가지고 내는 것이니 general purpose가 불가능하다고는 하는 사람들도 있지만 black box 내부에서 논리적으로 사고하는 회로가 구성되어 있을지도 모르는 일이다. 



AutoML 쪽에서도 구글 쪽에서 연구한 내용이 있는데, 딥러닝 코드를 생성하는 방식으로 모델을 만든다. 이쪽 분야의 이전 연구들에서는 neural architecture search 같은 방법을 쓰던 모양이다.

https://github.com/google-research/google-research/tree/master/automl_zero



위의 두 가지의 예시로 생각 해 볼 때, 소스코드 생성(text description -> source code)는 가능하다. 저번 학기에 시도했던 소스코드 생성도 그렇고, 다른 사람들이 한 논문들도 소스코드에 대한 특성들을 활용하기 위해서 AST를 생성하고, pointer network를 사용하는 등 온갖 휴리스틱을 넣고 있는데, 그런 것 없이 GPT-3 같은 게 튀어나와서 유의미한 결과를 만들어 버리니 저런 식의 특정 도메인에 특화된 모델을 만드는 것의 의미가 퇴색되어 버리는 것 같다.

오히려 저런 식으로 다양한 분야에 쓸 수 있는 큰 모델을 하나 잘 학습시키고, 그 모델의 사이즈를 줄이거나 학습된 모델을 분석하는 쪽을 연구하는게 더 좋지 않을까 하는 생각이 든다.

