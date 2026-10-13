Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5995F5208A4
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 15:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.130.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791905368; cv=none; b=XeREKWKJyNbBRGCLb2QeshdxKF9P/prBOkPXW4Sc7cQ52heEc8pmZuR3/kGuEMwwUhjKOuk45wgZurGvrp8cxufbIek6DdhfLMzMRJzjPOMK4OpR526uz2MvjN6BHKYWs9X7M/I36Vs9SNs9xneIjI5079VTrDnnfQ8BfU3sKLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791905368; c=relaxed/simple;
	bh=p6HWLkTW6oy89RbnJel4TR/B9XM4cQOUil1ZLwkc434=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type:
	 References; b=pbm2j0Tmg3tIJoWhQMzzyqvgzdUWkSlBPQP/8V78wAlXCsbxywIdkzrxk97awCso2dXJn/jqY+FMvL+/7BTZH2maDP9Dwy5U5/Q5/zlsGZH8KXsmnTlA97P3+B92ii4EUBPPG4cObE0fjeC2DWmnfkdg/oNw0BXCYzFR4EtgEHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=MIWzUEUH; arc=none smtp.client-ip=74.6.130.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="MIWzUEUH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791905365; bh=MEEy57dBzI9+ZqcMBCyUPjYUy4vh9dAUbQktjWInSwI=; h=Date:To:From:Subject:References:From:Subject:Reply-To; b=MIWzUEUHVL/KhJhil3j4jIbcCuI/Z5Gz4RAT0joVJIUA2xBc8r3LZ2Hpgn0ok1S9O4XvdStOZGvQEO7xcKbIEFlq0VV+VohnLUa1jZadtcbESVmdOFTBYsFE3WG4tXRJ4RvN8Zj9vAKgVpXjCK2iHu0zfVmXz6GQRGs2agqvw15mgxmGXpYNta53BFTgZjRpMuXBvBdlidghl/Xr6y8EmkP+9bivbdjPZO7mrCnknmbLgJMgl0zlq+8MCHS/hVNwctfMEGTSTJ3g6obdnRoIWVnqs/qMozdfpVqEoRRkqi4yFvA/qurLdiX8crKB8aTTpyExpsi/ArOiIiVepZva4A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791905365; bh=cUgFLPDbidFVhULgo44VkvvKNQQmLlJ0r4WuI9R6/6/=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=UQn+5WfDovIKKXzFGnaagHiSkYH8q9Xn1pRop/gZ+pDW3PMIZppPj16SiGBCPiUH6qWwANxSDHdR+vOvzooaboB+NmquTfyjaAs7iVY38XJE37lCghjc79fbplZaqU8i1qlNun1xoCw4okHG5zuKvAr/QII5hvOIS+WdVo0FlS6emG1ZKvjObfCod58WaM4xgaADZx7i+uR8eG1qe96rCLfnSlsmLp6G4QvZyP9gaHtqfsSVE3hHrlyFoofsILaDLgnsFxmKfrMyfJvEgZpXG0WhlJ5zvjkDNwY0YzFJUB54OZAsTy3wSVgxMz3O18/mAXhtDitV/g99Mf1gMLSp/A==
X-YMail-OSG: ENjcXbQVM1lsQ6Q8eIQlvINm4nk5sEF5xsYqWDMwNdNpvA5LrDtdvAqq_ZtO4ls
 O5YpWw6saL4GPhVfXxFFHXQPUukoUSCzs0zSkV0JxqlPrNq3Ao3ORXLIdVcx50jCC.b3_iaszmSW
 EOUd7Z2uTQayCHfK1o6779CuE0Pn2EfVtIp2ZTh5Gm.0giiOX3.Lu4.AfNrX14KYsMav.hausb33
 uOMJdKDdwQBZ.Q.CkQhnF2dEBSvlxh0h7tDtc61rLB1zkD_VzaB2Kh2aujc9INLREWGl4hpXwQ_p
 LjiU__711oACQYT1yZwyMQnmLO79uf.SUw6F_QUEErimggtjTp70fjEH1_txoULmw4rgH4idr4eU
 BtPI3p71yldGue9pUer1qATrDiQF9KXhEMtxCGciBjgc3C9bxOAkbN4WlZSLHz4HgzNBThpXlwPs
 eD3xxTGRwk4PLVTwohfIhRdoAEAr5wLiHRhGJ2m1QKwy8cNXzZzEvdG35dobkIgQJGhn3ag4rRMk
 5gBkPtsBhNZF08nIJoWkBXmy7F.pQvMnETLE2OfgUyCjo6mdTOBU7TEkultJLyvB9YkyUK1tapmP
 Fp6n5fhK_PFE14avMJ19TqmaWzvp1o8bmwcA2qONgoe3oCon0Maxy2LXTnUjIllewfrbBNGKR7X8
 rPsdGPj5_KTcw5NbfSxYq3yPf5qpcFBawGKMmQedTpttGrKsbMK26a0CoYFWn6tHoubWIUOBuNrl
 zF_VyOPwrBdrwN9vQp8hSRN7Y31ELmQFQt8GhLWlEmmWWpHtKhgVMxl.K7TL6gKZbsoJez68IQaW
 pey6MVPVD.oqG9p7fQdIoyF3iAXtyJ4QXlUqp_w68aQwKcCA6vMNmAWFW3liJ0oVSNQ4x0Tqmah2
 4e1JjESmsyRDNBWYaWy1Zar30QL7aq4Xw2gJ3KroCjDwyl9GmUJWtKhDnfCMGL0hr7P98t93DZw4
 9H6hZK7wfN7NO.zKMFzy59W_31cEcb6h1DX0FzHvqsuaV0TdVa4xUjcHhz75rXyUjGhb3RQ7A0SU
 9kAL9jH.xtB4r3o6MHvkQUzGzrN90OM9QdWuzcwLZqFq8DO8khcJoIn5EszYQ80PQ96gbv1j3xOh
 3OKGwJjPoHPOHKwnJAL4RVBBRRdllVgzCAu9V60GSqm9ZWM89H2Aq7QoJMmAhjyiUoM00rAYm72G
 .35y3Xivon7DgNiqwY5s2qbwVSdc1t3MFlXBprV5RVFEXnYeu2CC6kI4d00xS9np6o.xL13n5FBs
 LQFLC.MbESKgZj10qQRqnVh51r41wtxjQO09_bUO4vLdWfDicJr0Eb_TrbwlvKepNtFw4EBgmpHV
 zu2_Q.B4hs62Hh4LGoNWVJABsyBGudrS6xfSfCn4jT2H0087sbY1X7NeqbAZvQO6EsUR8G6QxCZ1
 WZPxdXUO8648qPuQ0k.x_PqRT7NbxrpGh1kFIHRK0MuwVsbziachhxTzjI88ElTxJTvySjoqKkre
 S5uy5KT2iKkiqAMzA094_3zQGQ4_uApIkvwmKaWCM2f7uMcLl5Q5GI_JqtsJq.4PgN1XzGIL9r55
 HOOX2HHVQ.Uh_kyAZ.giPpk0Zzybn.NqimGUQeh7TL_bIIMfGvOQBaB_VU2ix28blMFkhya6Vxpi
 tKADr6jqbJGEyn_.MaMSFDiOvEktvQn4CLDRRvVreXwZSEFiBJepl6S5zaoAEb92g3zGwwQmM_cZ
 IBn459rsaNEtQFLcCX02stwGqurxaNhC2nrU0Xrjgk94bpo.1OvgHrGkM6d7AGnLwcBzTmCUT8ek
 dwxFhMvtIpNV6m1Jcv.SrZm3JztLuRvwdnvETVNOlUDDERP9gten9lwtWKeQVKAxRnF6LaslQ4A8
 j3c7Ui5z06dwf7WTV2e78gjmAy5Enm_GqYKVhHrdeMAX3ULkUxAE7Uit0e.aWQgRl6H3aOdFwpVm
 X1tkQhil0rb8Hmc8_yMNCAC2KTz8mP0r0RAPz7aSe853k3TwmxdgphO0O_DZmau.S89jH4bQoB8v
 J.ICg2TUA_f.WixAuFNVCV6ZP1DXJwQthCdg1xHsmRw6AJW8smzDJr5rGB8nw9jipdvDxw54.avE
 PrLT9nXHMRG746ZVw9SO0Sb3JX2rekTAuXy2x5PNKZyiuzZSnIZR7Dy9Y6qifDaIFmPptD0AMJsk
 B1y3XCi8mBEN_EbTx4wx3Ubaja_RE3KS.632M2XP3ecEcAwIXcFiArG9ev5.AwcQnsg0lHQtbGcM
 z6RpyhNPC7shvT4fLfQ--
X-Sonic-MF: <deaner92@yahoo.com>
X-Sonic-ID: bfa849d1-2aad-4108-aba2-c56aa66a31eb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 13 Oct 2026 15:29:25 +0000
Received: by hermes--production-bf1-6d6877594b-68jnb (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 49f81e6be28396015cf92f730e2a0c46;
          Tue, 13 Oct 2026 15:18:45 +0000 (UTC)
Message-ID: <d87d55fd-8bb9-4a98-a93d-0c04de35f441@yahoo.com>
Date: Tue, 13 Oct 2026 09:18:42 -0600
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
Subject: Patch Candidates
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
References: <d87d55fd-8bb9-4a98-a93d-0c04de35f441.ref@yahoo.com>
X-Mailer: WebService/1.1.26668 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

Hello Everyone,

Greg said he won’t take guard() conversions in staging, and the welcome 
email suggested them, so should applicants avoid guard/scoped_guard patches?

The same question applies to the other suggested patch ideas. Are memory 
leaks, _obj allocation functions, unused functions or variables 
acceptable candidates as patches?

Jeremy
