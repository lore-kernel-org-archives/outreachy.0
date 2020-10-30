X-GM-THRID: 6889129421220872192
X-Received: by 2002:a17:902:b203:b029:d2:1fde:d452 with SMTP id t3-20020a170902b203b02900d21fded452mr8603870plr.36.1604060955785;
        Fri, 30 Oct 2020 05:29:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:bd82:: with SMTP id z2ls1916198pjr.3.canary-gmail;
 Fri, 30 Oct 2020 05:29:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypKnhv7hROj3iqPkW7DWJn0Gh/Qnt3HoBCExyfHI0mpGeZ8Ih3t/C/p7AjNtCDxgDBLFrM
X-Received: by 2002:a17:90b:204:: with SMTP id fy4mr2842441pjb.156.1604060954099;
        Fri, 30 Oct 2020 05:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604060954; cv=none;
        d=google.com; s=arc-20160816;
        b=LB7KpdQxBH9hCav3Lsj+fIVfitP5F2paoU6sTo88khMtdNsoruy7ciZh4NBI7tTNvD
         03RoOz/ICehtdfLTtOghvACBzDFjtXW66ucUCmZyxauaVsdT3Qrcsttd6ZDeIz85Q70Y
         O//beiWja7/jNVDdjt2xJRuYBWhA7IbUOfNyhX23Y3pYo1n0wgz2ab5CUovCacpJqQEz
         QNXuU4FKEqdmtTRpzCKmB2XuI9wfD8ioE7uClDubgRIZvf/kqUWEpmDB3q/97SVsAoGl
         Hhm0rMikcpYGBtz5SyuVf/1zjCHwpPs9HA3EU/OLb01o1I8PaEBUrQBFszxPTcSIx/2K
         azaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=rN1Qvzu/9MrM/FOzo6Ovjjq6NYj69Cc3xSFFhUeC8aw=;
        b=f7HCFKbEGbcwjv1exGPzpGazVEOXFsOgU588Hux6HOlyRVXxqBtXgSfX1+EoMU3hH+
         OSwwnk7cSAZ6qZyzyEPYWi5zZL2l+j+5AeKfWPAGwSza9a8+UvDfQQhw2bHHHZBPg+qC
         hotmgPgzDGOpQayDj94jLdSG43q1MG662T62Dvewz+gC8/NHyUoMpWXx2zaHMc6C6Dt9
         Isnfw5gQPn4cQBrG/10+q/QBj6CMkwjF9r0dZkNFqh1PlPE3GuX589a7yT85T56+r0i2
         XOyCWTKrfjYpaSkjS5IbVOXEFZ9bCZ4Lz/8myPCdMw+f9hlCPW6uga+uS6F+/xyrN/qq
         e7cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tgT5mG4Z;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 6si474279pfj.0.2020.10.30.05.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 05:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tgT5mG4Z;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id j18so5160933pfa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 05:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rN1Qvzu/9MrM/FOzo6Ovjjq6NYj69Cc3xSFFhUeC8aw=;
        b=tgT5mG4ZASLg9SyUUHIYHjGGDfAJXQNLxyt60yhkcrD4MrUuZKVAYz9rowwHCdt5H/
         ZA1nJK36d/dks+prIDJLbPZrAnieO+2a2fyY5Hr+K+8kAWwkRd7VB7jJqnvqxJ/MsPV8
         AwLDxRFElTbVHwhOQcMDkignGz5I5g+E6ewHz6kAH07M1cU0hrWZ83tFo3z1dGZNJFmo
         V1XEL7KwCShrshxn5kmqgmHnhEd0a1q57lMJa02is6VcoJVEqn8vNTTn7x7h2HIldHvK
         htCL23uHSCoI8U8hoE8qHd2bNboRq3GUI22iIO3g4IBZpn5a10l6cfqeP5ie9YQLSRst
         bM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rN1Qvzu/9MrM/FOzo6Ovjjq6NYj69Cc3xSFFhUeC8aw=;
        b=X1Bw/cSyVfVh83sdxgEbZtcOCKUE6mJ0+qNYfdqhRtS+cqHckZFGbjGzB5sGmGr3VE
         TeNTfTfuWVmjcWk1RBLJQLN6rhRRJ0y8TVQKOuyLXCy9S4E0sxWWxBBFA2mjD5nxlcWx
         8QYPdfzNF5RRBB9Hn1ZqGMS2Hn+3OEFi8349r4GZcgy+uDdFhOgZwIXNg7Buo7GukVIY
         YfGRwFRTBFPSQH7/0kNpRMLTVpM7p/5C6NW3QB+bTxD8ECdArpz3YgZ4NqQNBSb4f61O
         QSj4tdi7YiKZrulFL1GD7TR8JFe3SSQsqng+c8AKMduN3H91bA4YLIAXELmKZ+uPsKyC
         KJ0A==
X-Gm-Message-State: AOAM532XRF+9Y90JW97Qd5olhAYw/iOTWsl4ohM8Yk0nmOC9lOUyV8jv
	G2poMhzqQWKsLEr+gP6sjo/EO2yymwR1Evxo
X-Received: by 2002:a62:e811:0:b029:164:4551:926c with SMTP id c17-20020a62e8110000b02901644551926cmr8839616pfi.27.1604060953807;
        Fri, 30 Oct 2020 05:29:13 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from AJ-T14 ([66.181.185.125])
        by smtp.gmail.com with ESMTPSA id y5sm6106519pfq.79.2020.10.30.05.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 05:29:13 -0700 (PDT)
Message-ID: <22b1470078eb13300e7afdcede8aaff27a95b75c.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8723bs: hal: fix
 position of constant in comparison
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Fri, 30 Oct 2020 20:29:09 +0800
In-Reply-To: <20201029194643.GD27442@casper.infradead.org>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
	 <20201029194029.141165-2-amarjargal16@gmail.com>
	 <20201029194643.GD27442@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-10-29 at 19:46 +0000, Matthew Wilcox wrote:
> On Fri, Oct 30, 2020 at 03:40:26AM +0800, Amarjargal Gundjalam wrote:
> > @@ -1670,7 +1670,7 @@ static bool
> > halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
> >  
> >  	if (
> >  		!bWifiConnected &&
> > -		BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm-
> > >btStatus
> > +		pCoexDm->btStatus ==
> > BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE
> >  	) {
> 
> While you're touching this, please reformat as:
> 
> 	if (!bWifiConnected &&
> 	    pCoexDm->btStatus ==
> BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE) {
> 
> ... fixing the name of that stupid constant is probably out of scope.
> 

Sure, I can work on it. Can I do this in a separate patch? This driver
has lots of namings like this and I'd like to do single type of changes
in each patch. And do you also have any suggestions on what could be
the best way to shorten these constants?


