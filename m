X-GM-THRID: 6472044844807094272
X-Received: by 10.223.154.112 with SMTP id z103mr380877wrb.0.1506971329203;
        Mon, 02 Oct 2017 12:08:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls2214598wme.3.canary-gmail; Mon, 02
 Oct 2017 12:08:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDAGeyKuprLENlnVQSq3h3MTiU+x9Fwu7n6WTpm91GLzgUZN2D8n0t212u93y8RVxThS8K+
X-Received: by 10.28.68.135 with SMTP id r129mr1912019wma.19.1506971328244;
        Mon, 02 Oct 2017 12:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506971328; cv=none;
        d=google.com; s=arc-20160816;
        b=RSaxkRtmddAfMSUUKtQDjmjs5pOWivBq0VddAVLHjJzwEMFdVL9zw14f5/TNvF3Eth
         8iqVYE+z2MalBgVXQ2TgxakRdXiegV1Ggc9jpMxY9nY8X1EFWnguimV93BIWAn6WYjd+
         N2Lla0UNFrc7wHMeBg3paOiKyTxehOimU3NlQDBIJPfLjvZJ04FQsVJ5ybdf/NK3qumb
         YEoDzRy1eKp/5Ls0z+/6kCxP2Tze3hGcwijZkyup7EJVJ/WFHbA2qVUMIP9/c3HKtmw0
         9Muw365sihDs/Y0RDDDEgn5IGw1HovIldSkSqt5C70XLP465oWfVtjJ85wPWlVDvb4Lr
         WHmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=SRO/M4Tbs5Leb3Ss2f0Wz82b45m8De0bXPbNh6f+ZDk=;
        b=sJ/pO+Cc+CmQHvYCH6//ikCTlPlaOznwe/qhx1RBgh58rIpdSdyJrmR/ZseSjl90Tm
         D3WbA/SPsUBE25dpgs4BSdubJjW3r8cw8VKMhETG7/cNDDpZFJNE4mzQWbr7ietODyL2
         qy3JZvmFWXIxOAyA/w4Z0sEXMzRJ7K54GFvzPIhQ0yzdLNcYq0pNdkVXgtW0QBDG5ay+
         M9A/INRskZyIhd+6dWQuP4dYA5saz3S0k1vhlJQDemNEZagXREVw0K/WiNldIrm1TgCY
         vntVMJKKMhno4hjEb+GJCvb9S6VY2l+UdIFdzcZ60fYg++uiED8ljusZL25zzHun+l4+
         82pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id r65si1139075wmf.2.2017.10.02.12.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 12:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1dz657-0003H1-Mg; Mon, 02 Oct 2017 21:08:47 +0200
Date: Mon, 2 Oct 2017 21:08:44 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] exthdr: Add support for reserved header and address
Message-ID: <20171002190844.GA1164@salvia>
References: <1506890220-12226-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506890220-12226-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

Hi Harsha,

On Mon, Oct 02, 2017 at 02:07:00AM +0530, Harsha Sharma wrote:
> Add support for IPV6 type 0 routing header reserved field and address
> unable to test it with nft-test.py

It seems you didn't test this patch.

# python nft-test.py ip6/rt.t

/home/pablo/devel/scm/git-netfilter/nftables/tests/py/ip6/rt.t.payload.ip6:
ERROR: line 2: did not find payload information for rule 'rt type 0 reserved 2'
ip6/rt.t: ERROR: line 48: src/nft add rule --debug=netlink ip6 test-ip6 input rt type 0 reserved 2: This rule should not have failed.
ip6/rt.t: 39 unit tests, 1 error, 0 warning

There's a README file under tests/py folder that explains how the test
infrastructure works.

Anyway, you also have to perform basic testing by hand on your
patches.

Thanks!

