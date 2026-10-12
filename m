Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8954A441D
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 21:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.130.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791842092; cv=none; b=FNmHt5YJwznqP2iSsoPp4m7j6LCUniabYUzspBSMJTt5n/gJv/PKKF9i1vs3DVsRpRAUXcHUOR52SIMVe/v9Cto+vBdcZtKrBapmX7VPaHpaHOn6H7dkV3kzf4eZhCoWJsbJ9WwJIs04JWE+gRcPsXEahq0OfHIpj4Ekj0mHRl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791842092; c=relaxed/simple;
	bh=vu6PBBMrt6+y07EA4hXHSKoXGb1N0aFFs5IKDfpqJNo=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type:
	 References; b=iUvJf4/l9iRuOydznCiGRov8YYSHgKhnmIbpxVt/yltEzPRtpfOgtDijNsySikWYvAWbmExo5SAIxeTHtdon/ISEMm6OBg8RP2Hj1dO+R+iap9lkhv6kzwlaMTWkqlBn2zP4g28Fww1QPqq1ZmMjAH89PSj4Zhv7DC467ZrAQpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=gMu8w9WY; arc=none smtp.client-ip=74.6.130.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="gMu8w9WY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791842089; bh=vu6PBBMrt6+y07EA4hXHSKoXGb1N0aFFs5IKDfpqJNo=; h=Date:To:From:Subject:References:From:Subject:Reply-To; b=gMu8w9WYP8kFbmnC0EFtGXz9zljlIjdc3IQGiiRRbtFI2kTpZcU/P/Rmlz3zsmLavhS35qIhR5ZjJANTgudtX8uyKWd88AZ40vqr485TLs5RmhzF5dPklxTO+ZLSSmkXrK/1FCJZux3BuCGqJgPTReE1/p5bYSGmtKY1yAsbwid4/sZGVWLlFcPk2rm5f6KZK2wM21Xn2XWUzMPQb2dsKLlbs3EjyzRJvsOozPVpbIPnwqt/npsTA8k38+ctHv3dRyEUaclds76qInMarMds1dgj9Js+o81KvbYpdwkcEN/9Nt9YiZ3dM+MQHD7usKaB0JIIYklAFjU3qdDvwSaVZQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791842089; bh=BA/zavWxbV5AFJErtxmCGwIPb37xXtsWVxgJBixE/vS=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=Mh+0wKgxlqcaVlYy37XL/6uJD+6buLWgc4bTv/2S3TQur1sc1W6S62NFBac0xiOMDAycla7Fpuht7Knee52RWbKB2EAgzGECfiyU007sfmLi/SOuT/cSxP9PRyd7Vq4+55TeEMbJOv2eRk6Myw//X4rXi40P4lfqLP4e8nR/HLEm/xaaijnOZslpt0a9m43esI1CbAj/5a/ugj0xiEnN9R9x9+WENhsKWn8RC0P8LWN2BWeTfUKxo9AM/FCllq4hfXKz8V+3Qn0aqnU9tMyklUwcg+CqDimTm+CR7E29vDat+NHuHUUkCPsnogqTX2wU3lbp4oUKwpSwtLAeUpuRyQ==
X-YMail-OSG: v6Da7G0VM1kjR.LjE1V99Jtx..GfsLEzzynKu5yAwAIJxAcmq_8CvFZEGVDuVdE
 KbuMy59qBwdodJhqxsRXg3Y4HaXrwSf6j54dCRweYLeDiyklpBlg_l0KND2XswPdzafQ891VP6LD
 AYVQ1Wly.hTjQOeVclrg__nqrLAkIxxt9jZcZhP8DNckT6yds8yz4m5WLfi2KdZ8jRrWGaW4LB6g
 wv6tGt40JfPiMTmH6Xk2melQF4EM522xdSL_inAFuFcUbtIkVZvdv_vYUyjDTVFmZW0R_ioseeuv
 DM8iQuayZwrfCXftOjrvvD_LrrOwkaf8442vYCwHD2eELfwi1DwxTQu75So8s_B4oMI5vVR2Ztjk
 SxQRVjsy6VljdRY.di7YWmfw4ijRhric4fgifbu3MzAtM4b3g2U9chg4JxSJZUmxgKsaQ40gbkPQ
 zgsjSDVeXQAQUXpTfnXeIBhA8u8.DH65LgLeyf.WPBgbafkqQbcSQA4FZ8cQRKqzfjti3ITsUbmn
 l5m6d5seWIqekhLmXMvzqX7CR91K40Rpxzob76tn3j6HU714o2UUjwRETMVfMSzNA_mG5S7ZkrDF
 9w3bx7bamZwTe_N3jXBikURy1SBQfnM5iMgd8xwL.dJX2U7F.IoKjtBBIeyV.Yk67Lch3u9z75CM
 W5pfg2.q4J_WteJR1sOeHLISTIuMb0V.VtAAaLcTNahZvaVTmSBO5.HgPs6xKKbIEF6CL0fdVert
 ONk1ZYLQy.qFggBSP5ecCY7wApwolwGtKQguDOhjpaeMAnTWyHVL5jl_ZG8PMq2u57tOEHEVkacG
 F8jfz9f4K8CqlgFyBQ1kk0oUsXymSD2Kj0k2oxmdyT.KH1zvUDAcUwmQ5dBBbqeKGcz7Unncjl8v
 qvE1hXUVi3QPxhq53m2Bt_1mKo94P8aQv.X3e4yyTTlouTGjyPCTrci9R7BHUSfA6LkeR5fd.5KN
 mVaHKn0SP3RQxUq33G3_iSXslAU4kZ6PfrBk4RG.nNONPwJHsTSUOsAj2mmHkLHfSgq1T8paEcvM
 K0u8U9pmyFEJGmEY227mIoWhmDemcaGiq7EUj9voIXrcAunldrZSzTh5vD7WFpz6pApcKk6Aw9IX
 yqh.zGroJoB1ZKZyVJIMjuwv1waG7z.E6VIoPV0hnk18kdmdZVJtSWFfjCn9urJQ3ANKSWhnr3d5
 0uc0gZv3G1R4yrai7Gpen.xdAPFLO6oT2GxH50GC0hH2z12PYPCferkPSmlB.aJVGCmUthSpVp_.
 wByv4A.CHKtf3e5p7MW.R4jgn5Yq6OxftjKrWZeeKcdj8wwurCaQ_4IqPelUnnQSPTZ8cKbgngoE
 wB8e_rSOOcLlLuoe2I3yWhdj4YBjvVyZMx_L5CSVjImBczjB3E5vzxPlbalMtr7lhrvtYtYQrS6k
 tmosL_IZTXeuRVWS3zHfSk3NDdRjespZcz8YC_K_V.OJMJNtXPhRLJ7xHU.qWFh7LsmfuO.8Aqn5
 Ud9XzkCCgfSdM042BAdzrNNggOa_4GPSapAeeBh3PrIuuCd1tLLVWsQ8L1pKyuxBH6XsZS5QLYKq
 JOrCRYo6XAiFbX.J9J_0Lj1kZMLAjh_whr_zfVyG4fEcAASn7Jl4pxEMjSJ_som1JHckThd4p0_r
 XynOKu3fsOnTGq0xsNEGs4d0_YS7CkkPmzQSfK39a5Rn1NV9BtjzToq7tIOi9JW.b6BjO9ioJ19A
 I.Anjqs43h5HZmg6zolkzjN7_Hmrar99dt6wfKFLh_8WJZiHc06xKPhiR1jClYrokaK80Iv0CeA6
 HhSnE.4mbL_GXGzWUAVlGwPiYVvj7GVnfbsrL_zhgGLImjh.PLiKIecd_W.Ahp34eVjxYHiGnO2L
 oqpauJ2TS3PW_Vsa750q7TuGhmGTnncNNFE9PwG4FjckvDKvuZQBZbWY3gOXEcAXcDwSEbx6WB7h
 BNuLoMElqCEXA_vgUeao8FulwtEC6QFaTjlgpp4ddjLT6qXH_Lm6Sm_BlA.1IYddTwkdApudTddM
 Vz_mNLj0j4nRe3uyq.5bjQ17X85DJ4Z7hi9GZQizCHlt94OrWqVSDxdCTPA2kNwb67Bd_SZkLRTJ
 6I.1UQZwa7LkUsQWMEiiAsXRCcpSAAXl.fTnZtCVJBhP2wp0uvx0hJCt.lXxkJeXwwfbbBqobkIZ
 yV.wbsWrNB_i5uvtDlXQfm368wNxJcTJ01jVS7rKk6clyEpfRh0T53wuFei2akbGGj1GtsMhH9Il
 nfLTpoa0qiQ_VIfkOZNUkAg--
X-Sonic-MF: <deaner92@yahoo.com>
X-Sonic-ID: 715879c0-91ab-46d1-aac6-ff760d3bd3ce
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Mon, 12 Oct 2026 21:54:49 +0000
Received: by hermes--production-bf1-6d6877594b-hmvct (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID e6647b0fa19914247dde241d3d9caf71;
          Mon, 12 Oct 2026 21:54:47 +0000 (UTC)
Message-ID: <77a36fee-7b04-4913-84b5-40a84dc05060@yahoo.com>
Date: Mon, 12 Oct 2026 15:54:44 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: outreachy@lists.linux.dev
From: Jeremy Clifton <deaner92@yahoo.com>
Subject: Intro to Outreachy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
References: <77a36fee-7b04-4913-84b5-40a84dc05060.ref@yahoo.com>
X-Mailer: WebService/1.1.26668 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

Hi Outreachy,

I am Jeremy Dean Clifton. I have recently completed an apprenticeship
teaching me about programming and databases.

I want to improve my teamwork skills and linux kernel knowledge.
Outreachy could be the perfect place to accomplish this. I am eager to
read your responses and thoughts. Feel free to message me.

Jeremy
