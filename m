X-GM-THRID: 6620354100879949824
X-Received: by 2002:aca:44c1:: with SMTP id r184-v6mr1657194oia.47.1542053449219;
        Mon, 12 Nov 2018 12:10:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:542a:: with SMTP id j42ls4315858oth.5.gmail; Mon, 12 Nov
 2018 12:10:48 -0800 (PST)
X-Received: by 2002:a9d:192c:: with SMTP id j44mr1720448ota.58.1542053448690;
        Mon, 12 Nov 2018 12:10:48 -0800 (PST)
Received: by 2002:aca:3507:0:0:0:0:0 with SMTP id c7-v6msoia;
        Mon, 5 Nov 2018 10:22:52 -0800 (PST)
X-Google-Smtp-Source: AJdET5c1OD4TAkEgynEehVqJAfORzC0GmX0avRTN8LzA1xyAQ4xOXeprLzONQv2XzFPgISx1uZA1
X-Received: by 2002:aca:3254:: with SMTP id y81-v6mr17565779oiy.14.1541442172183;
        Mon, 05 Nov 2018 10:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541442172; cv=none;
        d=google.com; s=arc-20160816;
        b=n9TzssVWWIXB213pabewMmvowGRRIAz8mEC9MYRVY+c5PNYdCvcA8qzDJriSrQRZVX
         SUPXzaY2FLMmETPBc/QtqP2LHswgwMaeuOirBzoxZ0B3lJsKEpmJ6i3ue7BaOPMZCyew
         YLrXDCssFzwQz/vrzydYxKMddSMJ3JWhnWWCqsiLeLV7mpSaJQi/bzkJtQHrc03BFCVt
         +elddIfy1W2UIaevHjFMaR10ci6bMGfNpYYt3CFWjIeK3vHTkdwLEAXJ4deYhbaS1nY7
         pZ2+biVZRFqYhJBmfNCCJEViF0eAPws0zim0sfnTVJEV0J6sB7a4bFx33sxZ8cgs/zl4
         KsGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Pzcr4937KcBo5lS/7nox2PnRdCcL+/D5DN1MeWlat1g=;
        b=PVfOL+nUWzv+j91Yn7n46tKvEDH1Xrv2NcXe0iC6XmUkOmvWHivlbZK9DNVCUdhs1+
         BFhc1Q4DzTdXn3/l6xw1OCb/tmQ/k7R/P9sYp7JedhWCeiUv0TpFeE9GiA1OfsBamHNc
         450Cyc/CBm0N96t1T1iA8xLdqAsliubg1RUQZQUcYsSs1wrPRQ6vxLPVfEaF1Xd2ITnD
         scMD5vLlZ8khAOqlsXO9Wqnv4PV1nTlWMhr9U3SoQQf71JgWSdPJ/syI7Dh5cHVtC0gt
         ooP5TpLLdDUDMmF+d7+A96jtdCwyThewqVzv4l79tFp/TOc4Wuc/8elZ1oZrOBycm890
         uwGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aol.com header.s=a2048 header.b=gRxfqOLH;
       spf=pass (google.com: domain of hsiangkao@aol.com designates 98.137.68.148 as permitted sender) smtp.mailfrom=hsiangkao@aol.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=aol.com
Return-Path: <hsiangkao@aol.com>
Received: from sonic302-22.consmr.mail.gq1.yahoo.com (sonic302-22.consmr.mail.gq1.yahoo.com. [98.137.68.148])
        by gmr-mx.google.com with ESMTPS id q14si811205otg.1.2018.11.05.10.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 10:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of hsiangkao@aol.com designates 98.137.68.148 as permitted sender) client-ip=98.137.68.148;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@aol.com header.s=a2048 header.b=gRxfqOLH;
       spf=pass (google.com: domain of hsiangkao@aol.com designates 98.137.68.148 as permitted sender) smtp.mailfrom=hsiangkao@aol.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=aol.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048; t=1541442171; bh=Pzcr4937KcBo5lS/7nox2PnRdCcL+/D5DN1MeWlat1g=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=gRxfqOLH5UchxpJQIYUNGhw+nt1s4RMBlwD0VYdx/QRigCliX3RuSnh/qMQHCtd/yvB70EsvLSrjO4BbZbp6+M6ogsu966YjQl926bVnmAN4q5ImcQK3v8vnc1LdcrHhtLDSRv+po4ti5smsUuqWW64b5QhtaChpzKX7LAd6/9/Njc3/st9hk4f08mSBBS+QCME3GywLmDGAgzl57cCTzT5NXcFfDjjHsxudMSqdRWc7422HvGK9QcId4S6+Su5MIICerO38ZtroIQZTbzZfV5AmutHB7YV7SXqHKtCOFMcbffwfLJSVmEQJFFhlFIlIwCbv2I+5cHzOqV4Nl7u7+g==
X-YMail-OSG: crAGdqAVM1l.NXEOOvDnN4DVoUr7B_5vFUxsaQKqnTHTTelHC7WNt_NvXzjGsaR
 d.OlmtLh8849OaFwHcv48d3Xizw958rlNavihHC7AUWeGzFWd_rx5DSMN0PplHCsJxynG7f8zNlX
 7U3KPoTa370LkwlCgeXt.tWpdX6Sp0wzWXGUsBmrTsdYCI0kaQBYFJVAg54029al7RVzxxEXgFB8
 ZRXSB4QRDS9CD9kVYGaexnGbOs.ttNYU6GjatGeyKfORxPh5EAmxnZmu3SyxJK6qU1PCOgoE8G3T
 E8WbGASPfNth7WfC9fn1Uj1ej9xtJf7q6LEC6b1_SXZqndC24GSOUs6omrpm8McfVATj9iI6XrLm
 XKdJrktiqsXCY5W0rL.XBG24qdPZ518bcX6gXUkLES73SXF_IZF8JMJ05Am_5oR8zW9tihzCUj.a
 uCrg0_G2itjFiI32ujpK2w5FJ5h8wGNPKJCorbTBXOxY8MjVyEf_Dubsm5UeYTWgnBkSitZPV.S6
 Szhw7iIlA2vMvLlP.GXBoz8KJumQ9xejqEFXva0GUrm.n.qWQCMpUR_UQCP1ueRMxBwCxCgRyScp
 YgCGFg1kQ2sMibAQ6iYp8dJBw6svWXVPh7ItPuJui.kpEeFVX6lgeO1njp9VjR5udQ_swG_GEvno
 gQuab74Px.Jjxw1xdAMdZWVCEcMXuT.r5RNBung3hnqUbZZKqiLc8tyg4vnwrsIyfXzflRd0WezV
 xE4tWX6bnJZVFWawcSsqyMIaOvP9PKIGZSLwq8RVfbGJDhJDJ9gNecGkBfwhpawyRYdbpdkompuT
 sRGX3SO446r3zt7_hl_REuktzd1im1rIJZtvNhLfAES6TwoH2POmNPo_LtKx3Idq61dtmCi_eZM4
 xv2wohrixtrAFckC3TRmswyeRJq8AUP1voZtAwjZbkv6Y_HCBgl2d4sd6xF06yq_hTwjCOUvsWFw
 wY0VYypXRNFrleFuq94zpD18r909kR.30NUqK9ZY.KnX.vPRzuCaVaDmG6_nVFmv.DYi7UTojSEE
 qHvl0Xp.JTikV_J8na047pq8u6N6t4nRgCSzq
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.gq1.yahoo.com with HTTP; Mon, 5 Nov 2018 18:22:51 +0000
Received: from 60.177.33.247 (EHLO [192.168.199.149]) ([60.177.33.247])
          by smtp412.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID cd513794c4c18cebae2c7ef25a809db1;
          Mon, 05 Nov 2018 18:22:47 +0000 (UTC)
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: erofs: Modify
 conditional checks
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Outreachy <outreachy-kernel@googlegroups.com>, linux-erofs@lists.ozlabs.org
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
 <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com>
 <alpine.DEB.2.20.1811051650270.31780@hadrien>
 <CAOMPgjgoseN=+1ezv+xDZSoWpUxnsA3f70NisjAwZN=113fj7w@mail.gmail.com>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <30e72aa4-e605-d087-364c-3b9f606edaec@aol.com>
Date: Tue, 6 Nov 2018 02:22:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAOMPgjgoseN=+1ezv+xDZSoWpUxnsA3f70NisjAwZN=113fj7w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Bhagyashri,

On 2018/11/6 2:07, Bhagyashri Dighole wrote:
> Hi Gao,
> 
> In PATCH version v1 which is first stage of contribution, I modified data.c for all alignment changes and all conditional checks. As per discussion on email for this patch, It was concluded that I need to re-submit patch for single change at a time.
> 
> So, I created PATCH v2. In this patch, I modified data.c only for single conditional check and single alignment change and committed accordingly. As per Gao’s suggestion to do all alignment change in a first patch and all conditional changes in another patch, I modified and created PATCH v3.
> 
> PATCH v3 is divided into two patches.
> 1) PATCH v3 1/2 has all alignment changes.
> 2) PATCH v3 2/2 has all conditional changes.

That is correct. However, you send two patchset of v3, see:

v3. the first time
1) https://lists.ozlabs.org/pipermail/linux-erofs/2018-November/000796.html
2) https://lists.ozlabs.org/pipermail/linux-erofs/2018-November/000797.html
2.1) https://lists.ozlabs.org/pipermail/linux-erofs/2018-November/000798.html
v3. the second time
1) https://lists.ozlabs.org/pipermail/linux-erofs/2018-November/000800.html
2) https://lists.ozlabs.org/pipermail/linux-erofs/2018-November/000801.html

It is hard for me to know which one is the latest version of your patchset.
If you send a newer version, you should use v4 instead of v3 (even if you
decide to add a changelog), or

If you resend the patchset (same as the previous one, just to remind us to review),
  you should use [PATCH v3 RESEND] for this case.

> 
> Also, I mentioned what changes each version of patch represents under ‘—-‘ symbol.

Yes, but I think you should use v4 rather than v3 to add a changelog as Greg mentioned.

> 
> I am not able to understand, where I am making mistake? Can you please help me?

That is my personal suggestion, maybe of some help for you...

Thanks,
Gao Xiang

