X-GM-THRID: 2698279649280
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a6cf1b5024c222ad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.160.3 with SMTP id xg3mr1144932lbb.5.1424684645678;
        Mon, 23 Feb 2015 01:44:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls510090wid.5.canary; Mon, 23 Feb
 2015 01:44:05 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr1163273wjz.0.1424684645379;
        Mon, 23 Feb 2015 01:44:05 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id l8si820423wia.0.2015.02.23.01.44.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:44:05 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wevk48 with SMTP id k48so16825737wev.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=C/eqENmPjwYfIWQmn6Ltnyr7ZoNsuMZuqmem6Nz1q9E=;
        b=cmutYvNhq4vtmRRO5r653LkxKt7sZ7oCvbeJSsavCWvOmEvuvMGLeqA1u787NBlC8s
         +usuybxMpCSa312UBED2AQKGxeHpEzd91jQYQikEu99X2mXWLPJNavxeOq7S+y70L3lQ
         Zqo+3Fe6do2Tdq87cf6NdHe+xQ1HeWMr7bYifDA8lF7GjHw972RvLJK+JMJn+lEuilE+
         8KCip1VJQLzBH/BalhqiDMCrmVLPAhrLSzUdXoKt9JK7/2Rq9TIj7iJZVXEc83cyKigV
         Z+0hAdZDw//OeJX5ib9SiM3cbnRKfy7jSHh6hfrkLaviJvI0hC6HB1jY4pnlliYek15G
         ycOA==
MIME-Version: 1.0
X-Received: by 10.195.12.167 with SMTP id er7mr20905392wjd.54.1424684645212;
 Mon, 23 Feb 2015 01:44:05 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.216.178.66 with HTTP; Mon, 23 Feb 2015 01:44:05 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502231040130.2479@hadrien>
References: <20150223091613.GA4359@gmail.com>
	<CAEnQRZBevBPsNHoewcJfkx9SUjG=9otF7QOz1A-Rtt=EfErPxQ@mail.gmail.com>
	<alpine.DEB.2.10.1502231040130.2479@hadrien>
Date: Mon, 23 Feb 2015 11:44:05 +0200
X-Google-Sender-Auth: nMCIVH57bMigLkdmY6wOHEhzQ_o
Message-ID: <CAEnQRZAP3J=WoKWN53jnheJbhroeq1_JmrpWy7ux7e5BcoonGg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unnecessary variable
From: Daniel Baluta <daniel.baluta@intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Daniel Baluta <daniel.baluta@intel.com>, Vatika Harlalka <vatikaharlalka@gmail.com>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 23, 2015 at 11:41 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 23 Feb 2015, Daniel Baluta wrote:
>
>> On Mon, Feb 23, 2015 at 11:16 AM, Vatika Harlalka
>> <vatikaharlalka@gmail.com> wrote:
>> > Remove unnecessary variable and replace its uses with previously
>> > defined variable.
>>
>> Hi Vatika,
>>
>> A good commit message should always try to explain why the change is needed.
>> In this case you could say:
>>
>> We only need the last 8 bits from offset, so we can directly operate
>> on offset variable
>> instead of introducing unneeded newoffset.
>
> How is the number of bits used relevant?  They are both u32 variables.

Used as in useful.

Doing:

newoffset = offset & 0xff;

we only care about last 8 bits of offset.

Daniel.

