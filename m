X-GM-THRID: 6207871882034675712
X-Received: by 10.194.118.65 with SMTP id kk1mr1809313wjb.5.1445415975015;
        Wed, 21 Oct 2015 01:26:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.133 with SMTP id jg5ls919731wid.14.canary; Wed, 21 Oct
 2015 01:26:14 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr6482149wic.3.1445415974677;
        Wed, 21 Oct 2015 01:26:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si285772wiy.2.2015.10.21.01.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:26:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,711,1437429600"; 
   d="scan'208";a="183760859"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 10:26:14 +0200
Date: Wed, 21 Oct 2015 10:26:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent
 to match open paranthesis
In-Reply-To: <CAHWJYF=XYqG0JuDzW8UVZfpneJ-tn_V29wRhty1-5udwNbBD0w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510211024520.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com> <6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com> <alpine.DEB.2.10.1510210954140.2588@hadrien> <CAHWJYF=XYqG0JuDzW8UVZfpneJ-tn_V29wRhty1-5udwNbBD0w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> >>  static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
> >> -                     u8 byte2, uint ncmds)
> >> +                   u8 byte2, uint ncmds)
> >
> > It doesn't look like this is aligned, but I didn't try applying the patch.
>
> I think that the email format or the patch does not show the tabs in
> the proper way.
> I remember that there were some off by one alignments and this and the
> previous one belong to them.
> Nevertheless, I will take a look.

OK, quite possible.  But it is strange that all of the function calls look
fine with their added and removed lines, and all of the function headers
look wrong.

julia

