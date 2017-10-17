X-GM-THRID: 6477808984307793920
X-Received: by 10.80.222.130 with SMTP id c2mr3295058edl.8.1508244328728;
        Tue, 17 Oct 2017 05:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.146.172 with SMTP id k41ls676164eda.2.gmail; Tue, 17 Oct
 2017 05:45:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDKvBlW7UL1XVBrwxrF/gVXoPs7Cd6LJe+Pin9hVKwv/3y8Q1M3fIarygP0u0KucybaLtiX
X-Received: by 10.80.204.74 with SMTP id n10mr3295629edi.2.1508244328138;
        Tue, 17 Oct 2017 05:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508244328; cv=none;
        d=google.com; s=arc-20160816;
        b=cFNmmv6lJxQx4cZMRHq7JXYovRTm/PgQkiN3Q/bx9wrQ5GXuHgDQBuYyvN/bBwN9fo
         /gIStXo+cdin3Gof5QfgmwU2YgX1R3tO/dlxl8U8vDKwo1oO4V22Tf5YZgDnfmWNXQMN
         2ZPfnY5YENhJT+7SZF7P183TAK1osZaMY6zMk6ef0N/dChGkZe7n3aBd9SpGnPyaJFON
         tEd/Gvvl/oG2iiDY0gys3un/vOfmkuVxN6oldcO2sIEFVFj5QfuPOBiI0+fcBXTNxTXt
         RDb+P9VYOqkvzOji9yafBAruXZQTvdS4vriH/bD1Uzm41UF7hsA0/YwFG5HOHZx3aUyi
         QidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=6AUWkqYzw8yYzSVpoAmAUWRmj8v8ot+k2M+oLq163uc=;
        b=i0thQutRde8ipkG63TAROvdrmw+qSvdbdnblzRuPnBBFpi4S50z1ZEpD4kzNmzzhvx
         44Zilgk5ApitaR1ZD/QZqO+zZjydK32ic51AsgnlkWvH+uk40r/oG0Ayuh5yDqirq2Ga
         ibO43x60hun0NeSJsB8vtLXJBQGLikwUXfbQkzbbdEz7IBi7B/ExU/kViFIJ2IZCpuxC
         SIAkJ8/+LEmbcDV/oqjiz1EdyFM9YSScSszIoTdtuI8koqUlpcmtOBPh3vSSdlIj4h/s
         NeGq3NfOILUBNm2qYZtfoR7mat24mKO6DESy+WrElbkESuEFfCj2PPZElKVt/0fAumdf
         Jo8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id f9si559760edm.1.2017.10.17.05.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 90BBF52306
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:45:27 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 823E6DA877
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:45:27 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 77DAFDA874; Tue, 17 Oct 2017 14:45:27 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 62333DA7B9;
	Tue, 17 Oct 2017 14:45:25 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:45:25 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 2AEFF40584D3;
	Tue, 17 Oct 2017 14:45:25 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:45:24 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] tests: xlate: print tests passed and error for
 testfile argument
Message-ID: <20171017124524.GA20587@salvia>
References: <20171017092458.18672-1-harshasharmaiitr@gmail.com>
 <20171017112757.GA8578@salvia>
 <CANMOCy0HPn+0v62=-rBqZzLFq9V28VswQDeW2x-MDofXDCt+Eg@mail.gmail.com>
 <20171017124421.GA20525@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017124421.GA20525@salvia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 02:44:21PM +0200, Pablo Neira Ayuso wrote:
> On Tue, Oct 17, 2017 at 06:11:20PM +0530, Harsha Sharma wrote:
> > On Tue, Oct 17, 2017 at 4:57 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> > > On Tue, Oct 17, 2017 at 02:54:58PM +0530, Harsha Sharma wrote:
> > >> Print tests passed with errors and warnings when run with only specified
> > >> test file.
> > >
> > > I would expect this works like this, for consistency with other test
> > > infrastructure we have:
> > >
> > > # python xlate-test.py extensions/libxt_ecn.txlate
> > > Error: test file does not exist
> > >
> > > I can see here this works like this:
> > >
> > > # python xlate-test.py libxt_ecn.txlate
> > >
> > > But as said, it is counterintuitive. Would you revisit this patch?
> > What I have tried to do int this patch is
> > for e.g.
> > 
> > # sudo python xlate-test.py libxt_ecn.txlate
> > will not result into any output as all tests are passed
> > but with this patch
> > # sudo python xlate-test.py libxt_ecn.txlate  (gives output)
> > ## libxt_ecn
> > Ok
> > src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 0
> > res: nft add rule ip filter INPUT ip ecn not-ect counter
> > 
> > Ok
> > src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 1
> > res: nft add rule ip filter INPUT ip ecn ect1 counter
> > 
> > which is expected output as one should get to know if the tests are passed
> > or not .
> >
> > Thanks. Please let me know if this is expected output or not.
> 
> I see, thanks for explaining.
> 
> I would prefer you make this converge with the output of
> iptables-test.py. It would be great if you can update the
> xlate-tests.py so the output looks the same.

If you can fix xlate-tests.py to work with:

# python xlate-test.py extensions/libxt_ecn.txlate

that would be great too :-).

