X-GM-THRID: 6801392738100051968
X-Received: by 2002:a17:906:5e19:: with SMTP id n25mr6392539eju.333.1583575370382;
        Sat, 07 Mar 2020 02:02:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:25ca:: with SMTP id n10ls2662084ejb.8.gmail; Sat, 07
 Mar 2020 02:02:49 -0800 (PST)
X-Google-Smtp-Source: ADFU+vstzc6FB95yM7rCoge1Y0S/suOYGTmVvBxyxIeF1reb8Bwuf3aZdw8dN2Bi/Dp6jnMEdwnU
X-Received: by 2002:a17:906:e094:: with SMTP id gh20mr6715006ejb.230.1583575369053;
        Sat, 07 Mar 2020 02:02:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583575369; cv=none;
        d=google.com; s=arc-20160816;
        b=MnK8FVotpL+CyiLmWenWPpwYr4IV5L9cVECuBWFc5jai/nfkmTRNpQqBVNzRMiQNSv
         ikTi3oP7WdJIJwHpvj8/fxG6nlqxFZzqtWCDTEPyZwmwdYwUFUS/PdkNGDexeXzlEywR
         ZWxkat64ccyr7mj9YDz/b/+eCAiFMXefu3PMkpFMdmFefo6qxc8Rq0BbfS1kpTdI26VB
         c0qSqfGtaZqVVXZ3RviA+2NuvN+0T+70f3KOEQWs3f064VgS7DvOjSRaafNux1JhPSTU
         sJHtOEM/fc6HbnX38Laq16+Ig+uNP0muazQVeO2/oNQEoDXss/Uz7QzudYPlPlE6wyY4
         VvWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zlWIEadOk/7uh8KnxhJqk4Szxtuougc4lQfizO0xJwY=;
        b=MNSXEy6VIOxMkiCnM1eK0hJ9Hu+7Ja1KggC+c6E10ax/FdcJzywYWJr/KQBfyPRqe8
         NOwsuVm1/O10AoaRPmygaOhwpVDc11qwE4YoEb16CvdIRUqgcgFoYvkvhKIBxCjfpkV9
         WXRtF3EKD2qWGtpwKgdge8N+Gp1H98ej1vFwg6MFFno0uA/SOZa54cy3dkQ/hX7G70X5
         PKqdTyEr8vGPq2hiSJiv7btUYnkC4wCgCN+XTlAlKTrm8YNo9dEXfc2ifl9p7xJZPgKl
         uN4CAC7zpnEUbxym2rYyi5RURJjFlawJPtwbHcnxkaZFjgIQr1hDvW9KjWViA2JfCkOW
         OZRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l35si185409ede.3.2020.03.07.02.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 02:02:49 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,525,1574118000"; 
   d="scan'208";a="439273130"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2020 11:02:48 +0100
Date: Sat, 7 Mar 2020 11:02:48 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Hi, I am R Veera Kumar a selected Outreachy
 applicant
In-Reply-To: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003071102220.2483@hadrien>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 7 Mar 2020, R Veera Kumar wrote:

> Hi,
>
> I am R Veera Kumar a selected Outreachy applicant for the May 2020 round.
> This is my first post to the mailing list.
> I mailed from my mutt mail client to outreachy-kernel@googlegroups.com
> address but
> has not reached here.
> Please group owner, check If it went as spam.

You have to be a member of the list for messages to be accepted.  You are
a member now.

julia

