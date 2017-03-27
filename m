X-GM-THRID: 6401417655470784512
X-Received: by 10.28.142.134 with SMTP id q128mr512660wmd.7.1490617321806;
        Mon, 27 Mar 2017 05:22:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.83 with SMTP id k80ls1344110wmg.17.gmail; Mon, 27 Mar
 2017 05:22:01 -0700 (PDT)
X-Received: by 10.28.148.1 with SMTP id w1mr502618wmd.5.1490617321168;
        Mon, 27 Mar 2017 05:22:01 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id x188si58688wmx.0.2017.03.27.05.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id DF185EAA75
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:21:58 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D1AE1BAC26
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:21:58 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id D04F7BAC28; Mon, 27 Mar 2017 14:21:58 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 41146BAC26
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:21:53 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 14:21:53 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 1129 invoked from network); 27 Mar 2017 14:21:53 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 14:21:53 +0200
Date: Mon, 27 Mar 2017 14:21:53 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] net: netfilter: Remove multiple
 assignment.
Message-ID: <20170327122153.GA25113@salvia>
References: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook>
 <20170327120827.GA15676@salvia>
 <CA+XqjF_4cXL58vnxgKmawuZ4F0ZqvU1KvAtRbJv_r1ArLTpExw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF_4cXL58vnxgKmawuZ4F0ZqvU1KvAtRbJv_r1ArLTpExw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Mar 27, 2017 at 05:48:41PM +0530, Arushi Singhal wrote:
> On Mon, Mar 27, 2017 at 5:38 PM, Pablo Neira Ayuso <pablo@netfilter.org>
> wrote:
> 
> > On Sat, Mar 25, 2017 at 06:19:47PM +0530, Arushi Singhal wrote:
> > > This patch removes multiple assignments.
> > > Done using coccinelle.
> > > @@
> > > identifier i1,i2;
> > > constant c;
> > > @@
> > > - i1=i2=c;
> > > + i1=c;
> > > + i2=c;
> >
> > You have to explain why this is bad.
> >
> 
> It is against the kernel coding style and we have to avoid multiple
> assignments to make the code more readable.
> This error is found using Checkpatch.pl script.

Then, please place this information in your patch description.

Thanks!

