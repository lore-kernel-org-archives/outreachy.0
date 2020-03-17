X-GM-THRID: 6803727344338993152
X-Received: by 2002:a1c:1b8a:: with SMTP id b132mr2065999wmb.93.1584410261319;
        Mon, 16 Mar 2020 18:57:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls10357416wrv.9.gmail; Mon, 16
 Mar 2020 18:57:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vumPZBI5rb6eanqnciNfNxg/bwWOcgzLKcbweuqOQxdI1QMcUNUezIP/p30zcU/uw+vUoKs
X-Received: by 2002:adf:e550:: with SMTP id z16mr2670620wrm.394.1584410259956;
        Mon, 16 Mar 2020 18:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584410259; cv=none;
        d=google.com; s=arc-20160816;
        b=GvpONr5/uAkSbw/CkiLD37Ds6l36bYDcHoXTlyYjGi9jOJinGwksPKnhLNJkzINjk5
         57AC2x/U0c4M+XT+W+q+aE51+zEYthGYVIRPgD4+T0Is+s58EdDQOfeZrNzQwQxDXzkj
         ymL2ar5Jkrx7sOHwIQLf0awKveo3Pk8gyJ6lVGKCVhryI8R8qqay4+rPz9bQ3QWMDMZK
         W+R41OnVtZve8Ux3QVh+m+2e78T0Snw18plDu0nePV6in/gUV6g2nWFHnNrl46V1ZkOU
         5lIJeTKfNqBDnyWUp+hnYJV+gsFwBI3uAMb8Vw1Z88IdqaqjzhYCKQDxASdxQoq+qU0+
         YlAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+kdkLMPMy47p2VjqsD21ctGycJDiTGfiXNZrBnlwKq8=;
        b=knE3gREEnEdk/P8wDSDHZIV9xxabwOMTBGXM5WQApnwQlIa0/9hWFZ6ulbxjpn38Nn
         +wmR73mq1AkRlpKGHMHcJ47ZUu9ANg1M0Z9GM3pRuL9jFmTZsNQRmkrFTcmOgTbA1Y4t
         CEjeYMyWPIuy54nrmfggkMio1tKP6oPejRbznjfPxwJhtjm1X997wqk47vJP5Z4QZAuX
         K27dOey8SrvZo6NbTwvyu1wENgMPxsmrB+t6NJNMEZwi77pYOHmZAsW2Hh67j07XTTpi
         8fjMTZ3DfnymMhmDsGI8TEevKxQ+uvIN0SYsua/LA8vEaVlg3kz0/w2A22K1OJAE+4bg
         j3bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id o194si1075251wme.2.2020.03.16.18.57.39
        for <outreachy-kernel@googlegroups.com>;
        Mon, 16 Mar 2020 18:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 1067 invoked from network); 17 Mar 2020 01:57:38 -0000
Received: from unknown (HELO lily.local) (vkor@vkten.in@117.209.255.139)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 17 Mar 2020 01:57:38 -0000
Date: Tue, 17 Mar 2020 07:27:30 +0530
From: Veera <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Better Fix for
 long lines in Kconfig help
Message-ID: <20200317015728.GA5977@lily.local>
References: <20200313161631.GA2376@tulip.local>
 <20200317015008.66b7d14c@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317015008.66b7d14c@elisabeth>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Mar 17, 2020 at 01:50:08AM +0100, Stefano Brivio wrote:
> Hi Veera,
> 
> Note that who reads the commit title won't know in which way this is
> "better" than v1, because v1 isn't tracked by git. I think the "Better"
> part should be omitted in the title. Looks good to me otherwise, just
> one minor comment:
> 

Okay.

The "better" thing is coming from "Outreachyfirstpatch - Linux Kernel
Newbies.html" page.

Should I make a new patch revision and send again?

Veera

> On Fri, 13 Mar 2020 21:46:45 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > Fixes two long line in Kconfig help.
>                  ^^^^ lines
> 
> -- 
> Stefano
> 

