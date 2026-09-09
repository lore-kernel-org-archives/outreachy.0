Received: from sonic309-13.consmr.mail.bf2.yahoo.com (sonic309-13.consmr.mail.bf2.yahoo.com [74.6.129.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347BD5650ED
	for <outreachy@lists.linux.dev>; Wed,  9 Sep 2026 13:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.129.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788960650; cv=none; b=kQiMuLZzydoFBaYMEhgIbser9689ooonUFWJXo6kkRngYdKHIOMCVKwPfebrX5BrTXevElZ/GvUS4M0yscP68IVTaWOxYWM5yjoAYb1M0NMcu43dZLKA3JhzlDLsdY1BflkzodR44ZO51hqAlxOnP5DR8pJKimHInlemqkxWxZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788960650; c=relaxed/simple;
	bh=k+Tgl+NN5c3Ea4XVxCMCtPr4+tLsDZJ6mLlamIL1zU4=;
	h=Message-ID:Date:MIME-Version:Subject:References:To:From:
	 In-Reply-To:Content-Type; b=Z2t43mt+sSRqK9mJyP2L46joZK1f4DSu6dMsbH5kwTDODlAS/7xPYcT5/s52+CWM6ctqnZWXy9JBDm1+ykqK2oHxjtuGYnz2PKvIXu6hMUV5V/o5khj71MApU5LCUkvwgIT3IALPX1QgdkMRUGA4qHxeruPjgpxhmjmebgoeA+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=CP5S94jx; arc=none smtp.client-ip=74.6.129.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="CP5S94jx"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1788960648; bh=V1b9HFHNhFmHu0UMwMCLNSFWbLPp0zTPLUJm6MVcIa8=; h=Date:Subject:References:To:From:In-Reply-To:From:Subject:Reply-To; b=CP5S94jxjrR8/rg6JspQqoipVbpbNDckFvpwvjbviMpCvi9JnDJJa16DlHI/5zMPBMHpIG1fvC1jI4cAkc1rNVHgYYfNwBjIbovt6On/Y/q68Y7XgWafCFZt0jTXaXeVQ6SGum5VX0WHOO4tSTdayl5pvg/c5tpIKTFRMyHLV6LlYgHdwCc9OBq79pbHhQpUCFTf7+S5uLnqTssBkzh14a8yF5CVVt0wqxSSPddK+nnSqgkbTcnKBOzbZSrT6ZMd8KBIpMyzl7UWQ/vMDXgEb7Sc3fwPCrmmbHqVFiSUJ9HmRBIX0g3mpoMZYbaHeP/5jo1dGJTdOEMEMQhu1tZbEw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1788960648; bh=WmmollNpP6uYO6KsHj/4tzoYb/8ajBMvBSng42vbwaa=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=KZYli/YRVqj+vQAX6hRi0KP2O8lqPEpumwOj2dba+thpuIp/tSQ7urH9wbsOHKd+GjsyTi8zdSZ1E1kKPS7ydHWqnlj7ZduBaf0S0xVcSCFK5Zl1hUgBK/9lMOZGwzGhaegjdE2o5pVXOfesynUoUrzoHcY6eudiGOEjIERKorl5QJ+xtnYOy+R7MkLBTfvAX85Yn6PdXuMXZwfYLcmqibppdCc5eBZP61X/cKG4vEpjICVQRGSCh6Z6iUTsOb1c6j6BLCDIZ7ADYdNi+DsPRWExyBPEArWBndWaHwv+kxmzyC9clNnfa58EYRwXAU1aXIoFqogpPigMhYy5LscR1w==
X-YMail-OSG: Unvdy.wVM1lKvde7AIei2ZHeeZ.UJ6Aq5IOekKFcMWUhLvi95Zee3KxOR7cMhoS
 e7nwCb4lHEpM9X9ReRu4c_w7UUgREzULtly5EeklWXNzBoH9YivlcHO2LcqJ9OHCjmSZ3I9pcQXY
 CPkbFGnaSJ5YBhhhH2gH1ttRqIW6MZ_.bjR3ThKStrnUYRA6yk2X7XUTYOG_GDDK8A..9bbbrZ8W
 6uoLhgSBXTgj4cg1vSLWPefPuOBqsUFsQkVSLdH65xqAuzmedHLt6E.5RqFmsACPfVynxmZWAXZh
 neElUa2n6mrZ_3PyM2mZSZMJGw1MgFc33Orw4cBJvkZ7KJ53jukuqDn0a2LHFIV.5UloniAaqLB5
 koMr7iVV5jFItOc79Q2Fsw0cT_ulbkez7vEcUQtRSs_ksuWZXyzOqiqJ23XkryoePw_iO3yq3OV5
 7BpQDi8ER_LCZWd.mnGZIf7tVWNvM.zAlLFzANvLpBsSzlj7clhJbvR__MXMDmftj0HtGn6xZiE6
 4E7ii0eTKug7Cn86ybxy1tOjSKhCvGx8WzqlV3R6ClpgMoyOAIIytKsAIElE5K8x56DYmOrkguDt
 fOqcIAhCe7jg.vMCC4tVRY9SOLtniVWsWySkGdyenzj5ztPb_pv2D.SZRTnp9btIuGlagu2HQ3u4
 DKetywgYO9_XEJkWCuMvOqBUmNya9NtbmIIOtBplT0UlYHUOuFGEHugK_ZQjgyetfhqnlUKAhXNl
 TYvmbYzRk3OV.GOIhOKBEvA0ARZedWcsUshtKTbrc2AB0jHhBKOnEmNqkIPDRW7oQofDKNyLao64
 rCtccpceTGRfoGD7j7DoHIreZKNzlGUhyCQS3kwAf6CUW8qpazeI9TSmB9TsggD5JVx_SAgnqRPn
 WSNpZ239t7hBspn.52Gm9BOcNsIVkjJT0R9_Tsr5r5V1VoC6UPNeSDVRiJp8lrIA2uwuvxHAs1fA
 skXMQuCXz6jlAiw4Hb1EnAn_U4ocjYMC.7XQls1Qk3u3rp5XkqRBkiqGSMwzVwLm64KR2392KBhS
 5vC19Dqa2vFqg5LAOt3eDx.MdkQFxkXMFM.jdff20iivHO6fUtx6xTYVqivFYFmbUR_BIEVWkHJ.
 oH_Mycrqn1zrvtoJEx.GJf.W09vy.UiXM4OheMJRvUoqNEqbawQQgT.LrVUsaZzoPHuGcAJ7XW1q
 MI4D3EN1eaSMKh7woYWzO52w9X1IzlooyKxPNdy2JaS7WtFkBeY4wo_qTFUIvO92.YyPRPNGUJHp
 5yfujoC2jH.fcwCRqbhTYEmC.4j8UAfkDtRAU7GqnbL6bQoCWDyE3APKy0HNvazBIg.QspbzoSg8
 3rMcV19LOynPH3sZLVufqwbZ19iheh.riL8qBNmQMJurhD5MES6lpk4HSLCrwTlUGjJRCp9M5bwP
 ec1yndYerw1bHzJ9HqoPIuaiItSgNlvfrOERHUqqYdF6lGMC8lrTAPoo7MikvAfpzXKK0_oAz273
 VX8hD69r2V9M_eyPLhjRNkRcuEf_6HFsZWty.j9Jm1tj4OwHy.pII3sSrSwwtSnGg3h6yT4vXBkC
 L_8w.mE0KhG5Q93lcA_yxNtGENsv75d6lPHpu1yJ_1pPGRb52m4oUzScOg8u2f2vlnKAN.Jc94rR
 gJ65tr7Qpb3l41FbR2OLlAtwir6hUApkYL90mqbuAybUCbicmj.bh3xTJtzRQbzNGzwNfi0sPX3l
 mr7Kw2wG0PMnUkev89oCQ3DP_kicN.IGWIPB66sx_SJZY8WPMYhnzzAdegiiIr3l9lc_t12lsBQ2
 2aGm1nKoWqvfs0_Le5.lk9Qq.0ou8lzv0Uc3Igpw25kjjLAQlXn6Jb0evenyY45sVhjpnbc9nMh2
 LbgHov6pGMgfNd8TeZva7zaNGfHdsqKBEvrHOQyMEbLUILLuBszlHtN663jLcH1P_v9RIeDS_W38
 xEM8RSLt.hGj_9GmFbKiOGTB0Ur4qgHsWY.SuoJSaIfjPFoM9T6JGI3X.mOZbTNO9QpBy.HB1dx_
 57HA0tDBuBEjuKYusKzlUiMc784waSGJMBpwtJDjwGpnanitJH9GvECLZIbG9CemNLRN3G22Jq0a
 TisjaySKnRarTMLBYEv7AunHTz3n44asnWzzRxfX2VOe.excAIAgrmHhzljxmIilb80qBp4gaihN
 _4Bh2iq_G1R6gqtKyJmbLeqQC5xpA33FfRd59d6XXOMBYOKpDxPzoLCgPKSdZptN8_aWMMO9hsqo
 NwCtJtrH57mI-
X-Sonic-MF: <deaner92@yahoo.com>
X-Sonic-ID: 3861cc16-eb52-46da-a9bb-10fd083d0241
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.bf2.yahoo.com with HTTP; Wed, 9 Sep 2026 13:30:48 +0000
Received: by hermes--production-bf1-54b5569bdc-fv65m (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 275b87a6c2782d1ad43a7d7c2e9b19d9;
          Wed, 09 Sep 2026 13:30:44 +0000 (UTC)
Message-ID: <34a93ef7-6868-4076-a2fb-59228ede68a3@yahoo.com>
Date: Wed, 9 Sep 2026 09:30:41 -0400
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Fwd: Linux Patch Submission Question
Content-Language: en-GB, de-DE
References: <721d968b-1e1d-4711-95a9-aa748cc25870@web.de>
To: outreachy@lists.linux.dev
From: Jeremy Clifton <deaner92@yahoo.com>
In-Reply-To: <721d968b-1e1d-4711-95a9-aa748cc25870@web.de>
X-Forwarded-Message-Id: <721d968b-1e1d-4711-95a9-aa748cc25870@web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.26460 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo


Hi,

I have submitted patches to the bluetooth patchwork and I have not heard 
back. Do you have any tips to increase the chances that the patch is 
approved?

Jeremy

-------- Forwarded Message --------
Subject: Re: Linux Patch Submission Question
Date: Tue, 1 Sep 2026 10:00:42 +0200
From: Markus Elfring <Markus.Elfring@web.de>
To: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
CC: Luiz Von Dentz <luiz.dentz@gmail.com>, Jeremy Clifton 
<deaner92@yahoo.com>

> Patchwork is the tracking system for pending changes; Ive sometimes left certain changes behind by mistake, or because they don't apply or something else broken, if you resent I will catch up next time but …
Change ideas from two mentioned contributors are still waiting on 
corresponding development interests.

* Jeremy Dean Clifton
  
https://patchwork.kernel.org/project/bluetooth/list/?submitter=Jeremy+Dean&state=*&archive=both

* Markus Elfring
  
https://patchwork.kernel.org/project/bluetooth/list/?submitter=elfring&state=*&archive=both


Regards,
Markus
