X-GM-THRID: 6401412042878615552
X-Received: by 10.28.207.7 with SMTP id f7mr32043wmg.15.1491496024207;
        Thu, 06 Apr 2017 09:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.28.10 with SMTP id c10ls2700872wmc.9.gmail; Thu, 06 Apr
 2017 09:27:03 -0700 (PDT)
X-Received: by 10.223.164.151 with SMTP id g23mr929710wrb.17.1491496023233;
        Thu, 06 Apr 2017 09:27:03 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id p10si108977wmg.1.2017.04.06.09.27.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 09:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4B92811ADCE
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:27:00 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3D268BAC2E
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:27:00 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 3C421BAC38; Thu,  6 Apr 2017 18:27:00 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1D64CBAC48
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:26:58 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Thu, 06 Apr 2017 18:26:58 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 2507 invoked from network); 6 Apr 2017 18:26:57 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 6 Apr 2017 18:26:57 +0200
Date: Thu, 6 Apr 2017 18:26:54 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
	outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, gregkh@linuxfoundation.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] net: netfilter: Remove typedef from "typedef struct
 field_t"
Message-ID: <20170406162654.GA5777@salvia>
References: <20170325122756.8743-1-arushisinghal19971997@gmail.com>
 <20170325122756.8743-2-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170325122756.8743-2-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Mar 25, 2017 at 05:57:55PM +0530, Arushi Singhal wrote:
> This patch removes typedefs from struct and renames it from "typedef struct
> field_t" to "struct field" as per kernel coding standards."
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/netfilter/nf_conntrack_h323_asn1.c | 68 +++++++++++++++++-----------------
>  1 file changed, 34 insertions(+), 34 deletions(-)
> 
> diff --git a/net/netfilter/nf_conntrack_h323_asn1.c b/net/netfilter/nf_conntrack_h323_asn1.c
> index 89b2e46925c4..fb8cf238a76f 100644
> --- a/net/netfilter/nf_conntrack_h323_asn1.c
> +++ b/net/netfilter/nf_conntrack_h323_asn1.c
> @@ -77,7 +77,7 @@
>  
>  
>  /* ASN.1 Field Structure */
> -typedef struct field_t {
> +struct field {

Probably better if you rename this to 'struct h323_field' to make sure
compilation doesn't break due to structure name pollution. And we also
got a report from kbuild robot that would be good to investigate.

