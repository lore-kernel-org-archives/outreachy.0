Received: from sonic307-9.consmr.mail.ne1.yahoo.com (sonic307-9.consmr.mail.ne1.yahoo.com [66.163.190.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0044F14F11B
	for <outreachy@lists.linux.dev>; Mon, 22 Apr 2024 16:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.190.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713802987; cv=none; b=dg8iW+Y5Za4JZxU5U8iKaEAPs4GeZfuAnFO5uggVj8yWH1wui0oBCO4KC09I2WjJglFtoUC+zk2xMYkH6REYnkhceqZiBrXDkmkxwUEnm7DHE/LnqPMxjLpAq2ITsJ1jtVOHCR9oVq92E2nKS41LgOBso3XdaqmSQKKBFVOmNaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713802987; c=relaxed/simple;
	bh=fLATWBlPEPcZQ76mE2CLu0MkLgQxEM1UJa0HFleVyPc=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type:
	 References; b=n1fhfPGRu/WlUKrU4+hZRbRDOE/a6XxfelNo/T5mW/TqmcaJSuE/CT3gh9ynJtuAWvMO7K8jPobwR5FOeuy59/c9fzghUAw7ZhhLqm27ZBcJ0BvkvCTCDcF32qX2Zpu5ptK5tIgr4S31t4/CFFUb41Q53/yuMd7saQtv/fwxSIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=Xp2/+2QD; arc=none smtp.client-ip=66.163.190.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="Xp2/+2QD"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713802979; bh=fLATWBlPEPcZQ76mE2CLu0MkLgQxEM1UJa0HFleVyPc=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=Xp2/+2QDmgygMCoXzEevBLDYEc9k0IqocsjtGEsxV+sGo5WKZcP+QNmYDDc8n/8VCrcVk2u9OlCnXr46/P4O8xILTFv1F/1ox2BY/sbM3ubm2fULIDnNHt60v1gwZI1KvkVEQeTXloV/ynybjp/PUd2t9FQ6Ee7y3Kk9bkNpNrZfAePLD8CgPkKUIFmCSFlMlbG8sXy00GjTnHgSQ1J+R2jj49kEQTlP6aWVoa5v1LME1+/JY9ozogM9NlVCUVNwbKDpTdfZ2ebeWdh5lXXvSJMgg0nboVypsbLwd0EKssfVKiyeeNQcTyo3yGtmzMp+nC/CWGjFXkvLPRkDaDQHKg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713802979; bh=bX5Sc8SxKGNVJZtcBIikNsptkMB/cYnNe7Rrjc8/3gM=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ilDzXpqvbZ+OLiiy4vCk0R25GgpJmg2d2n+n/TdX1kRjefh0wPvmRhdbz5Thx11xxYZDigpzxGoQWy7EDodizhNJJdCLJN6TNlvMYvN/ncJrOZYTXksw0RFTd7T3yHK3+5EO5/Nue9FcAHljNWx0iLVqchwn+gSBcl12J1/D9OnmQJHrbDmWcgrV3TSyvkp6CTljTD7z3Sfp4WvjYMcpaXPiY4O9AnLekEezYcJAF9tbcORoVONzuUrU/qI0/6J229vTVSSMKLYXY3xXi8ggZTEKf0humXCXqya3SsD1uH69tN2hxM1OxhaH2dnoyL5Jm2M4j0FlLb3uZKVTY6/1zg==
X-YMail-OSG: enpKdcIVM1k8UJvoac9Yb.5I421hAE6fN_UzuBMkwa.akOTPfpFA49yIPLgJfqC
 qW5tuyga0d36Kj0_EPF9mPfZIkWHu3JmFH6.CnnveAxXqwGGWrRWOrQVUP1jOTkSIi55_sDhks2R
 4q4QnThztPHKWdrq4315z.NsyM8vh3Wleufg_uCt31aP6hxutTfSdllb2AEWNolAPL6jFvkK4F6a
 gw_lN76ErDe61Xud3L7nfve3gtGejPsuisZpfbXdx1oXUcdkSaem.VazeppNeVz67Y22.64aiS4X
 vpEk1kN5HAvhcBiBh.SxK1fEza_veVjXkjjgw3KDNye6B_eXdm1XilCbosof9yldl9_G5WXfpM.8
 3XtXdc1IQBBfXPnvOf3UDc0IIrP2IwOG776A3fL6JLrrcv8bgIsIUrCAyeCHk1WqPLQN_OghW5gK
 jRaspvIF_izLIXmKG20FZRZSYXBPh64oh.94DY.5IXsCYdlDj6ey7MlGx1TZeoElf6XtGh8UD7Zw
 TDjmCrDSo6Yw5PEtnDvehdjBip76kZtTaQvZw87u9eIB8zZbxCFXctQBO2zpgEtYFXbq8hxdP2oh
 32Mmm8CVkjmqBPuRg8rQMa.Ady7vHEBy5BuHuSAJfJBg3Duvy2qpaigenJZ7ln6_udJjP2B2tET3
 9UYqmNeQErUfqF.SuSAlZV0GCRPVlh2f5JmKzitjww0Zvhlbwpt9jw5fNXYe3qgELvp7ypl5tuYg
 MJR_uPaDSPdDqI7IuyYCuxPIqrxPhISRP6_8hLFz9rCOxa0o9Sj5r42K0Db0_5aqs1RM424WVrXR
 Hr4Xpu6WIL.9WCs88VqHg9T5w5J2WGejrx5z6ZKxkCGKJLNLUR0ZgDwDON0L67BsPApxwtG_Aq9U
 Z38np53pxtqBVY8wBNFKJXVy.9aI7eMCV7h71_Dk9xAmHeLudwNuEkTLJmWwienyNb9sSziDu564
 pQMxAPiZse54w3364zVZLOmwl5D1pGhJXZ7dkg4plYhfUl46GHWScOvW1Y_z0oC3u59UY3f5I_C4
 aUs6Y..TxdsTsn4_ImBahGDS3Yj93p4CXv76Hy7MHje83I_0z3WiRS6custJNMKRTNAA8K9iAhLD
 43iF.xTD6iCXK45KaLk4YsdXfskws115059YNBgT2uWNTtOHLMPWB8sMxrkOJJdyu.di_H9WKSHY
 km8Sy8X.MQ5XIhXF_1kBFkaLtk83skmlFyYxPAEcvJfiHJ8FRCePkCP34ZiGVaMlRADjEzAecDHZ
 XxRvqi1vUR9Tmkn2o71mzQIEZBkeV73XfpmcquV2wrwb3mCMpbVGhErYakiWX06ndx85qMlfArF9
 GRBOytGAVxmQm7hI.1nNC.CtWjedhN.tMb.BVolxtr1MEDAVlNZ0CWo6n8yjICFh3reLFrfBdtGi
 ij2.I5X1ecGU_6guBl.lsvGupnbWjt7dt8DH4nL33DCRy.zYOx0YYz0MA_IZysy5E.rqBIE0elWZ
 Rkc1PODRFzvTiJKapff4EVQEKQ3lz3IrHkDbF2C7bckoYu_i5n1EUuxjboPdQpgnreVFivLYyq7d
 bdwZ_Q.23ugnZbxcq9mqkJ.LaqKRsoeyk3zHvJY1eEb7vqdQDKIDmnK9C27YiQ9Q1qnuMlJ.n6ux
 9VGkdXKngvmqkZwiOHWEwkrH9gU80UV3SK91g4HajG3gmxbotdSN45jnkr0CeHD1c9tXphlw74_d
 EYeYIM.gk1Z3RfBfymM.V10Q4dozAae1Lo0owXnSWmX.puKGZ14ffjtI19pDZTyMVOmte.akYrvX
 Wsj.9rpPxWmZViZegwUjSGqJh1pPlZo1zlpuCYLFUb7Ep_139hsqSrLlmVeJmhA3sOEts4eBaG7L
 Qj4sCoycRDVz_0tuenEoeNg.lIvIFwXejfO1dKVWo_IEYNVGGXcsDYTuNUU7gY4hBLQh..JEkbq9
 UK.pQlegY6iGhpmCnDbesm3j7T_wb_uN6u_.Jfp6cTnxh8BKpyKJd_t5KR1cQ_J0XRj1EOs_oqbL
 aQ3qWj6Nu44.1LydPfNP03P5YJy_Wqhfb06w2KbrrSSgWq27_AE2HwAFQoDCCFgAPDOLbCKGMKV5
 UaOnc6TcDLlyVskAjOYjhifN9FfolDWwTPcJLCmL7lKYaeE9TFMmoMlK2BhRT5ohtVIwa9Jehku9
 OnqbEG0XPG5pbHEmAitF6hty3ac86NU4MZmOlSoiqLOjkP4AEVJ1eEeNgVXrXOnD5twNUnXimPYC
 48dwKy0_C55m3WAGCS7NvnSnXOYeEWoOHfu53.JvQgc3SeQDjZzN6QA4QoKVizd8usQ--
X-Sonic-MF: <ashokemailat@yahoo.com>
X-Sonic-ID: 4013e3ad-1736-480c-856b-f33dff396edf
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ne1.yahoo.com with HTTP; Mon, 22 Apr 2024 16:22:59 +0000
Date: Mon, 22 Apr 2024 16:22:54 +0000 (UTC)
From: Ashok Kumar <ashokemailat@yahoo.com>
To: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Message-ID: <489061394.2270510.1713802974136@mail.yahoo.com>
Subject: setting up mutt / git sendmail to send patch through yahoo email
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <489061394.2270510.1713802974136.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.22256 YMailNorrin

Hello,

If anyone of you have successfully setup either mutt or git sendmail to sen=
d patches through Yahoo email kindly let me know the steps you followed to =
make it work.=C2=A0=20

Followed the steps https://www.kernel.org/doc/html/latest/process/email-cli=
ents.html=C2=A0 but could not get it to work.=C2=A0 Did some research to tr=
ied some fixes but could not get it to working.

Used Evolution and followed the procedure listed above unfortunately it see=
ms it breaks the patch and it could not be applied.

Thanks=20
Ashok
