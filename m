X-GM-THRID: 6803932242595807232
X-Received: by 2002:a63:a069:: with SMTP id u41mr131878pgn.3.1584572986943;
        Wed, 18 Mar 2020 16:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:de4b:: with SMTP id y11ls264008pgi.2.gmail; Wed, 18 Mar
 2020 16:09:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLxPjuliyWCVD8u7Hp04C8Q7bvTmGa0iOxkWmawoXZlrx3SguIDo+7S8WJyfba31P59wVN
X-Received: by 2002:a63:4b58:: with SMTP id k24mr118418pgl.257.1584572985392;
        Wed, 18 Mar 2020 16:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584572985; cv=none;
        d=google.com; s=arc-20160816;
        b=gx8Dq36P/3gxg5tTSBqVa5E4dDdKYoxJcva35cnVTpvq69f+5MAg8hSjN8X0k8ROge
         UtzR6DMx8ZK8Sd7N2s18HniGaNpN4TWU/0XBNYNIOAxWlF4X823BOpkqIW8Ag6qoOrHO
         ws1Tkn+blmWZSmvw9JQhB9uBO9KF1iIAOmlPSFZCrw33yQKz52DlUTPd2nPZh4bLPH29
         9McbOEpOlWTA4LJKGCqIhfQPS1Y47Kyj6kLptI0SedqRGMF5LKejihrFEkmYQuBdOIlw
         xDPV+EAjzpgzRMeOx8fUV/Ify1pvylGCbLcS6w2mdxrm7OCwVcmf9RWO5rWoBWMvPxYp
         1byg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=qg4U5Daz8GBL8XK2KikF7fqpuxEYK46J5Q2aH1fM6QI=;
        b=GoOfyKEUCB/6ni5i3cHboylagUufHnp6g6ir4yyCSX4VIv4i/aPVl6dWskHjVE5TQh
         +zwt29M3RxjWvpfow8asCCh5PLXEy47jbTGzuaY7IigBVasqyRCU1piRnP2pwlMaF4uH
         7bVF1mEriPNc3K7WXCyHPeBHsolKOX0WdIOW6fUvbN1Yhq32h8XCOs/4mSUDAhwjCucF
         igQ3yevqTY2/DAjKKgNyf5g3nKQRw3S5p2R4mSljMlZtnqQwNmfEB2Vnq6Tas7G5Z6DP
         ODhxJWl3rWhdki+VPs7eStZ30hpP/LpQ/ukaAUm1qKLSslIScTLlPmC9swqITr/ZlsMP
         3spg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="DM/3a9C6";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id k3si34469plt.1.2020.03.18.16.09.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 16:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="DM/3a9C6";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584572984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qg4U5Daz8GBL8XK2KikF7fqpuxEYK46J5Q2aH1fM6QI=;
	b=DM/3a9C6bJCvnAsDBrxGcYBXi2S7JAxTi74C+Qk7E73dtpKH+gEhwk3swn2AgDGNCarpQ3
	W2el/p2p8lnb3QWl3cj0Ad10DFlKOwEWxyW08PTFmO67sLoNiA/OJvdgHvK1IqTfPvAoEv
	C2834ckOgtU80BsiuYzUtF2KgJKsA4w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-_C3SFrwWMK6QLMPrd3G6GA-1; Wed, 18 Mar 2020 19:09:39 -0400
X-MC-Unique: _C3SFrwWMK6QLMPrd3G6GA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64BD9800D53;
	Wed, 18 Mar 2020 23:09:37 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 421476EF9A;
	Wed, 18 Mar 2020 23:09:34 +0000 (UTC)
Date: Thu, 19 Mar 2020 00:09:24 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Kershner
 <david.kershner@unisys.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Documentation: Fix
 for longline and typo in doc
Message-ID: <20200319000924.1c80241d@elisabeth>
In-Reply-To: <20200318003325.GA1739@tulip.local>
References: <20200314053136.GA2160@tulip.local>
	<20200317110044.36940c33@elisabeth>
	<20200318003325.GA1739@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 18 Mar 2020 06:03:27 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> On Tue, Mar 17, 2020 at 11:00:44AM +0100, Stefano Brivio wrote:
> > On Sat, 14 Mar 2020 11:01:51 +0530
> > R Veera Kumar <vkor@vkten.in> wrote:
> >   
> > > Fix longline and a typo in documentation.
> > > Found using checkpatch.pl.
> > > 
> > > [...]
> > >
> > > @@ -56,7 +56,7 @@ NOT covered in this document:
> > >  2.1.1. Overview
> > >  ---------------
> > >  
> > > -The visorbus driver handles the virtual busses on which all of the virtual
> > > +The visorbus driver handles the virtual buses on which all of the virtual  
> > 
> > This is not a typo, both spellings are correct and you are anyway
> > keeping a "busses" in the other section. We also
> > have drivers/i2c/busses/. If checkpatch is reporting this, I think it
> > should be fixed.
> >   
> 
> English US spells busses.
> English Uk spells buses.

Buses is nowadays the prevalent spelling also in AmE:
	https://www.merriam-webster.com/words-at-play/plural-of-bus

but that doesn't make the other spelling a typo.

> The dictionary database used by checkpatch.pl, codespell is the problem.

I have two observations:

- codespell is open source

- you are supposed to check what tools do, otherwise tools would be
  able to do that by themselves. Indeed, I'm assuming you were tricked
  by it, and that's understandable -- but that doesn't necessarily make
  them "the problem".

-- 
Stefano


