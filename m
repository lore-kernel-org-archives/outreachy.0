X-GM-THRID: 6477594412631195648
X-Received: by 10.80.139.209 with SMTP id n17mr3234887edn.10.1508240113912;
        Tue, 17 Oct 2017 04:35:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.167.100 with SMTP id h91ls590405edc.8.gmail; Tue, 17 Oct
 2017 04:35:13 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBrXsbNC7sNy52tl63B5FA6+HmO1xx2SgPRU21P/Pbpc89uygekovRcYgbpOGTj5K5wktvF
X-Received: by 10.80.206.3 with SMTP id y3mr3250027edi.11.1508240113067;
        Tue, 17 Oct 2017 04:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508240112; cv=none;
        d=google.com; s=arc-20160816;
        b=NbPogJx3pYh747l1V5gnkoQfE7du0oYUtBpdaERn95HrGrwOVmgiM42TcM3F04O1do
         NlC5L+SNUUzUwHRcXixOb0P2AK+Ixc4r2MXSb3GL2EdB1GJ7rVcWHhWRXxmg+rCjv78q
         zB8NyXI2UFxLEKiciAe+dnNhcyW/8HY4/TCSrW2pDviXI4cTQKCVnVIf0dxqC09RQbHT
         ViXpMySnD6L5Lmm1b3e+WUNZVfbs+ljdV/zKlVL4f944xOBXO/Es1YhzCU8nodiXniH0
         fp3IHduKc2vY94WobOm85hbJh7254DKPDgIcTNB5kVYx/AZQ8g+1oPfNmszhFeDxKq9+
         nizA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=L05qtug8sqDhKkXlHo7u7ZqOHcwR7cWG0mPnYgy/w4Y=;
        b=sv71kps4BsJUWGRDOtqE3Jis8uqzXYO7CwrDfrVtYMD33jC3wBa5qAUHyEI1nESkxh
         oUE3AkwvcBjc7XNf6ZWSoHRQzCyX9SuVMhRRrCOep0nJ3Rg2ZGjsySyIK9PoDoZdtDZY
         rTS6Ec5fQvN523sjLI/C7eRZ9A9z30LREltvI/sv+5HqsbvNbfULaG+LVqfqan6NDukW
         vuxqlwtFHOWzjK+jwM0CIEEgC//8YcvexWS8e33ad+oad6xI1V1S1/ieeAqfuEyCbPSk
         2CI+A6xFXjw7TTJWfsTtl3cos0tA+FMQRymLT/XK9CgvKlamRKmYkrL1DVCI+SnPKOee
         U/Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w24si436563edl.5.2017.10.17.04.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 04:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 0867A1F4CB
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:35:11 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id EC460DA8E9
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:35:10 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id EB8B7DA87F; Tue, 17 Oct 2017 13:35:10 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 84371DA872;
	Tue, 17 Oct 2017 13:35:05 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 13:35:05 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 46F4040584D3;
	Tue, 17 Oct 2017 13:35:05 +0200 (CEST)
Date: Tue, 17 Oct 2017 13:35:04 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] tests: add regression tests for xtables-translate
Message-ID: <20171017113504.GA8841@salvia>
References: <20171016193218.8197-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171016193218.8197-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 01:02:18AM +0530, Harsha Sharma wrote:
> This test suite is intended to detect regressions in the translation
> infrastructure. The script checks if ip[6]tables-translate produces the
> expected output, otherwise it prints the wrong translation and the
> expected one.
> 
> ** Arguments
> 
>   --all     # Show also passed tests
>   [test]    # Run only the specified test file
> 
> ** Test files structure
> 
> Test files are located under extensions directory. Every file contains
> tests about specific extension translations. A test file name must end
> with ".txlate".
> 
> Inside the files, every single test is defined by two consecutive lines:
> ip[6]tables-translate command and expected result. One blank line is left
> between tests by convention.
> 
> e.g.
> 
>   $ cat extensions/libxt_cpu.txlate
>   iptables-translate -A INPUT -p tcp --dport 80 -m cpu --cpu 0 -j ACCEPT
>   nft add rule ip filter INPUT tcp dport 80 cpu 0 counter accept
> 
>   iptables-translate -A INPUT -p tcp --dport 80 -m cpu ! --cpu 1 -j ACCEPT
>   nft add rule ip filter INPUT tcp dport 80 cpu != 1 counter accept

I think you should replace this commit description to what this really
does, eg.

        libxt_TOS: add tests for translation infrastructure

        This patch checks that the iptables TOS to nftables translation
        works fine.

Please, revisit patch title and description and resubmit.

Thanks!

> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  extensions/libxt_TOS.txlate | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 extensions/libxt_TOS.txlate
> 
> diff --git a/extensions/libxt_TOS.txlate b/extensions/libxt_TOS.txlate
> new file mode 100644
> index 00000000..6d55eb24
> --- /dev/null
> +++ b/extensions/libxt_TOS.txlate
> @@ -0,0 +1,25 @@
> +ip6tables-translate -A INPUT -j TOS --set-tos 0x1f
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x07
> +
> +ip6tables-translate -A INPUT -j TOS --set-tos 0xff
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x3f
> +
> +ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Delay
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
> +
> +ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Cost
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
> +
> +ip6tables-translate -A INPUT -j TOS --set-tos Normal-Service
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
> +
> +ip6tables-translate -A INPUT -j TOS --and-tos 0x12
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
> +
> +ip6tables-translate -A INPUT -j TOS --or-tos 0x12
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
> +
> +ip6tables-translate -A INPUT -j TOS --xor-tos 0x12
> +nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
> +
> +
> -- 
> 2.11.0
> 

