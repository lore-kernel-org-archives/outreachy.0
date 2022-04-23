Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B858F3236
	for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 23:00:17 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id g6so40645ejw.1
        for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 16:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blackwall-org.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3QBd2G2aZjvPIlQVfUzMKqliUmMW6oCJslRCFwoaxhI=;
        b=Eqm+jTY3bs4ULYM0nOB03k10+Svn4xVtLKpFDd5SWUqcchNFjgq7KsG7lWlFnNqIQD
         j9XggUsvD9cQtLuC+DnTYWVASpPtq+y9R+7ssAQkN4k0AGSZyqpDXL9VnvDjq+RNL4r9
         lLEZv8DC4yXRKazGRD7QiSKVNxWAKRa8PO6kO0oaGLtayij+rCnJT5wqgn27JD2wTIk0
         6WY0Vgai3P8bk3dluV1y5vh0+uIyoLD3OX7svnNb9xJYBzmx6VUhUCH2ly520IzTPqUW
         +j1C2JTPH0GcPnG6B4KyBG8osRH5FJN2A3zb3mQV0v3BKlbzfBDArWWCbp76KJ1jSQCI
         JPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3QBd2G2aZjvPIlQVfUzMKqliUmMW6oCJslRCFwoaxhI=;
        b=fVzk8OX+kUfBrwavo3PK3rfdIGK2Aeg1//clLg2Hj7Cn1Sls3dKExNeUcER4sQP1HJ
         2XJEs25h+1NyPeH3rhXGJQhscYMPowhYfv/CTdwcYjRuMAAuP5vF1Och/iGDuO4yunsl
         AUbJjgqLM0ck7psIQIRznr7J6bkOnWLQgkB9+dvs3MzTVe8FsnVZIQC6k4eZzHdT1cjK
         j1sfH0fiFGuNyeoER30B8Hi3g4UznH39dO04KnFF/csudVYaAkDMXVZn0s88SmoVtEIh
         K6CQDvrgn1l8B5d+Zz4vpMv/2Gq44La+lMBQ5Y1hKNSYJY+v2Pt2K1sbZQpfrwCoL76L
         +6Lg==
X-Gm-Message-State: AOAM533IISpsNusIJGBmPrvL7CqOP4RO1bS2JXJFqqPLPnhE7GzlizZL
	wPR4Qk3kjk3vijzyv7Ah466QtA==
X-Google-Smtp-Source: ABdhPJzpB3Vf2L4wPFGrVsJfpBQ2OLcpKxuPQCSeeVgK1GHdiRzef5uzC4teMJQgd6OJS3bM0GfNKg==
X-Received: by 2002:a17:907:c29:b0:6f3:8d26:c330 with SMTP id ga41-20020a1709070c2900b006f38d26c330mr27075ejc.215.1650754815797;
        Sat, 23 Apr 2022 16:00:15 -0700 (PDT)
Received: from [192.168.0.117] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
        by smtp.gmail.com with ESMTPSA id fy29-20020a1709069f1d00b006e8d248fc2csm2047005ejc.108.2022.04.23.16.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 16:00:15 -0700 (PDT)
Message-ID: <0d3b9da5-3f26-a1a1-1bde-9b6332e6e8f2@blackwall.org>
Date: Sun, 24 Apr 2022 02:00:13 +0300
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH net-next v2 1/2] rtnetlink: add extack support in fdb del
 handlers
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev, roopa@nvidia.com, roopa.prabhu@gmail.com,
 jdenham@redhat.com, sbrivio@redhat.com
References: <cover.1650754228.git.eng.alaamohamedsoliman.am@gmail.com>
 <6a77eca533b7048b85bf0ffe0c3904d36045c320.1650754231.git.eng.alaamohamedsoliman.am@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <6a77eca533b7048b85bf0ffe0c3904d36045c320.1650754231.git.eng.alaamohamedsoliman.am@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/24/22 01:54, Alaa Mohamed wrote:
> Add extack support to .ndo_fdb_del in netdevice.h and
> all related methods.
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---

Please CC all patch-related maintainers next time. One comment below.

>   drivers/net/ethernet/intel/ice/ice_main.c        | 3 +--
>   drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>   drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>   drivers/net/macvlan.c                            | 2 +-
>   drivers/net/vxlan/vxlan_core.c                   | 2 +-
>   include/linux/netdevice.h                        | 2 +-
>   net/bridge/br_fdb.c                              | 2 +-
>   net/bridge/br_private.h                          | 2 +-
>   net/core/rtnetlink.c                             | 4 ++--
>   9 files changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index d768925785ca..5f9cb4830956 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5678,10 +5678,9 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>   static int
>   ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>   	    struct net_device *dev, const unsigned char *addr,
> -	    __always_unused u16 vid)
> +	    __always_unused u16 vid, struct netlink_ext_ack *extack)
>   {
>   	int err;
> -

I don't think you should remove this new line.

>   	if (ndm->ndm_state & NUD_PERMANENT) {
>   		netdev_err(dev, "FDB only supports static addresses\n");
>   		return -EINVAL;
