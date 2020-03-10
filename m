X-GM-THRID: 6802590976179175424
X-Received: by 2002:a67:2081:: with SMTP id g123mr12395923vsg.196.1583859546145;
        Tue, 10 Mar 2020 09:59:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:352:: with SMTP id e18ls1764514vsa.7.gmail; Tue, 10
 Mar 2020 09:59:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs9DisTPIltFqDECnzEVuxvbM3gQUx1cAqBaqTB5VXx2MuT0UKlUI0wd7XzZZ8knG4MlaHY
X-Received: by 2002:a05:6102:1cf:: with SMTP id s15mr5388468vsq.109.1583859545072;
        Tue, 10 Mar 2020 09:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583859545; cv=none;
        d=google.com; s=arc-20160816;
        b=pMQj8prAttPez0NjPvURImBHyKBlCYaIri62piPxnPgyJKvGvZBCsyiX5zqGZkxaHg
         7k43DPdo1DclAXe7TBOvOa4FspozeQDDFyBU004z/kVxSuz5L+hnj8j0HrCzyCtQTPcF
         Dx1KyR7h9WRf6TrfShx1dH+hr4eay2lvn7VsHjASAxrKrnMhRGHXh8ZvwR/Pz2WoXEsN
         B7rSmCnVyQ7PopnP3h+xYBSZuRYXNFUEgFCb8ue/o3h5kC5zO6PZR/T1vQBWtRhReW68
         vDrFiCUurc1+ae3fFqZF6pWVITuSU8MhyA0JsaCYH6WyK5fL4oBLOKMaORAWGM5RM8HO
         vfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=F4k/ZdLYI4txTA7FL/bDdj7ydorNG2vDiLMJnHHOTuU=;
        b=PuVpEP5zi1iDQUiPB45hJIZ6UvAWQGNQohSk8bcVI4pSpHmOmum573xDtrw5Un3fNH
         +jplyeQDbFpnpi84YWR9UilwvcqMVebBl7znveP46RUPc1mqE+lXlgZNK/cBsvwwoPZ+
         X4v6Nh4ZhgYWOFA4jcvlD350pgT2yBMfIgogQDW8I0VQfUjAAlfxj66UF/SJDAOgB8y+
         jYGB6zh0A3gggzUnz4tAZRtmAXWI6wcRsP7Eyzy0kJO5VUFj8FlvxUYJ5VKfffNwfcBI
         NNTvv7pDvbwAId6/KOpc4zB4lYl4d+pF1eTjISDQGi0jQBDnYL7v9VVm2VeokVb9FF7I
         MITg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.159 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0159.hostedemail.com. [216.40.44.159])
        by gmr-mx.google.com with ESMTPS id c3si51419uam.1.2020.03.10.09.59.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 09:59:04 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.159 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.159;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.159 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 4BA3D100FBB16;
	Tue, 10 Mar 2020 16:59:03 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:2892:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7514:7875:7903:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21627:30012:30029:30054:30070:30075:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:13,LUA_SUMMARY:none
X-HE-Tag: coat13_4ecf5281c8248
X-Filterd-Recvd-Size: 2756
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Tue, 10 Mar 2020 16:59:01 +0000 (UTC)
Message-ID: <3b19da8cb94aeb1e77452348dc528dd3b8a52a2a.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: rtw_mlme: Add
 space around operators
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@inria.fr>, Shreeya Patel
	 <shreeya.patel23498@gmail.com>
Cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com,  nramas@linux.microsoft.com, hverkuil@xs4all.nl
Date: Tue, 10 Mar 2020 09:57:20 -0700
In-Reply-To: <alpine.DEB.2.21.2003101554530.26409@hadrien>
References: <20200310144702.14653-1-shreeya.patel23498@gmail.com>
	 <alpine.DEB.2.21.2003101554530.26409@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-10 at 15:57 +0100, Julia Lawall wrote:
> On Tue, 10 Mar 2020, Shreeya Patel wrote:
> 
> > Add space around operators for improving the code
> > readability.
> > 
> > Reported by checkpatch.pl
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> > 
> > rtw_mlme_old.o - Previously produced object file before making any
> > changes to the source code.
> > rtw_mlme.o - Object file produced after compiling the changes done in source
> > file.
> > 
> > Following is the output of diff between the previously produced object
> > file and the object file produced after compiling the changes.
> > 
> > shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$ diff rtw_mlme_old.o rtw_mlme.o
> > shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$
> > 
> > Following output shows that there was no other change in the source
> > code except for whitespace.
> > 
> > shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/core/
> > shreeya@Shreeya-Patel:~git/kernels/staging$
> 
> If this information is importamt, it should be above the line.  On the
> other hand, it is much too detailed, making it hard to figure out what is
> being said.  It would be better to just say diff of the .o files before
> and after the changes shows no difference.  Likewise git diff -w shows no
> difference.  That way one can quickly see what tests you did, without
> being distracted by the machine name, the directory name, etc.

Exactly right.

Keep at it Shreeya.  Almost done.

[It's also nice to trim your replies Julia]



