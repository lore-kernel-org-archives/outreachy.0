X-GM-THRID: 6249584519546929152
X-Received: by 10.140.136.135 with SMTP id 129mr36654597qhi.10.1455095989200;
        Wed, 10 Feb 2016 01:19:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls257043qge.71.gmail; Wed, 10 Feb
 2016 01:19:48 -0800 (PST)
X-Received: by 10.140.240.69 with SMTP id l66mr36743502qhc.9.1455095988815;
        Wed, 10 Feb 2016 01:19:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x242.google.com (mail-qg0-x242.google.com. [2607:f8b0:400d:c04::242])
        by gmr-mx.google.com with ESMTPS id w126si133654ywe.6.2016.02.10.01.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) client-ip=2607:f8b0:400d:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x242.google.com with SMTP id b35so897318qge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=Tpz1hc+scvhIbRZUBRRopZZfWk+0iADDz6ZThIRJMt0=;
        b=rQ2z7LbkNUeCh2OaUMndBpnK9o+qgdfMBhXlx4e6EdQ/VwoIzk8cPAv/ejNV3hRRMx
         Gl62K2bAAoIHUSgZWKM61XqvOHzaOTu4x8O71OaOlFvTRE0g6h5lATJYHuZKZSWAWi73
         hvriA3wV79S2yoEUWkqxAKVZzOkOZNhdp7nPQLR2UL+cqrUiZNzvr40DAxVwfzXYRQAe
         +9JHflsVgd+hp2ojrar3tB2pCiYwnmu0kXnfBQQ+NgBk3hTvUklyrI2WeXME3OSWFr2w
         qniJLT6EPp2lLHtCpp5nHerKpuyGgFLv1hsdHIW0nLVTJph0EvE1k/XQqV95iLYKFu+b
         T9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Tpz1hc+scvhIbRZUBRRopZZfWk+0iADDz6ZThIRJMt0=;
        b=Wr+iffMmvZ85c3DtRVNyvHPGVS6AUHcLU1VpvUZOU94ufHTfQMppESxH5OwUUwTHXd
         bsj1gHVSBH6yS9hBgcfpJ07HwKM0dFa0pKkJiVuKAVqzPPydxQWEZGkMknhin72w64PO
         IncI8zN8DGwJQWkaeGLzAevUZZagdPzkI1RDxKukOzYnjYLxHcr1+8sgywMHebeG4sKP
         1+1QO//PKqqpe3FBnLc/cT6xxrHsT+XCn9Oo2wY2UcFNPPgty0qHAvWVexw5LW9WWUBj
         nbOSXBFYvvung2QKKXOaeNl3eLaq+x/q7TQ49o24gE7nCsmzrt0P0KKX6eQqmS0r0TC9
         +kxQ==
X-Gm-Message-State: AG10YOR1r5r5eHmgMjnLE9lbOKMhAbfgtaN2aPOT/S3y2b5Wxp8nG0Rn8aWqQ3JmTHmuarJo+J/lUg9H4KQyrw==
MIME-Version: 1.0
X-Received: by 10.140.239.66 with SMTP id k63mr18378297qhc.11.1455095988593;
 Wed, 10 Feb 2016 01:19:48 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 10 Feb 2016 01:19:48 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602101018110.2710@hadrien>
References: <20160210085942.GA14651@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602101004060.2954@hadrien>
	<CA+5yK5F1nNgDLCJrFm3CrgOjCe3OJUutMrQ5+2R_FOrz3g0wzQ@mail.gmail.com>
	<alpine.DEB.2.10.1602101018110.2710@hadrien>
Date: Wed, 10 Feb 2016 14:49:48 +0530
Message-ID: <CA+5yK5FHRvpoBpn_k=AbXQAuw_S_JrqHnfXVmHf-hntwtnm-wg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: comedi: drivers: pcmuio:
 Merge if conditions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 10, 2016 at 2:48 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> I wasn't very sure about this either whether I should make it !(X &&
>> Y) or !X || !Y.
>> Since Patch 5/6 also does a similar thing, would you like me to change
>> to !X || !Y for both?
>
> Yes, for all cases.  I didn=C2=B4t want to make the same comemnt more tha=
n once
> :)
>
> julia
>
Okay!

Amitoj

