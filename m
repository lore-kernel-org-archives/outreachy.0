Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BA117FB
	for <outreachy@lists.linux.dev>; Thu, 12 May 2022 08:39:43 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id b19so6171203wrh.11
        for <outreachy@lists.linux.dev>; Thu, 12 May 2022 01:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
        b=iH0GrPY8XRZBVfl7obokvqEguSGfgHDNW8WAl7iOB+g/Tlurte7GKIvSy3OEiTVO04
         eeh/9EJnTUt6gzmU0bJjxim8YpzFs4XRKTC8P/aVgEsfaam05KCZbdiKxj29+g1xkBf2
         UswmbtAGRTFvqTtmGRyBTdOYcZ91J6QPLUDDL9SOMpFlBJobtcsSwimEIYKHDMDu7YNx
         1BVEe5l3GsRKpiGKl6dB3pC9DEHDcu+83r0s6ZCjgVOR2/pWwazCqY3XbkZXfdcQz8RU
         dWawCs8ihVRvFOIIN+xL2Nx6s/6O7CHzwkCSwJ30NXqCG6IpajUa2NASiP9w4dKNfVa3
         GKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
        b=6YApZSq4NsHBJ3qv2QK1P/d8bEcS4NmD2Gw5Bxyt/XejvDOtO6yT6oGqabkVdHSkGy
         QtlxnXRa/5nD0l03jOuzJ4DrpGJFLNVyN/hsWIPe1+GL4Rb3aeIJc69G4lTweCgJkynP
         U4BmzMaNtwOdZ0LhSb84mdwehV6qYrzsrDYebh3vHNJMFKMBU4mDHg+XE2epI9qv+YwW
         HHoXYDHEVo+qGdFgdssVbmXbwT1torjALkxulPQqrFCagbaLMPpIm00Bqmqq8C2xeWTC
         VIZiZ+tkivS0yw+CGyA8pNws+GcCElw0iX2hUUVHQGDsYNMFesbCYvltihZVngSYJJ8v
         mQdw==
X-Gm-Message-State: AOAM530+0oXx/DJ4zaMtEZBbQ5d7keBGro7yisd7MbYVO+2kf8qyNY6L
	8MNY78CLVqRITrLwZbiEdHc=
X-Google-Smtp-Source: ABdhPJy4QFCs5Y2zJviQsqFOIlBsNYoUoAruuqg+WA6gkEtBygBCD5Bsi3bVQffDIbA1Z2Vm9UAlEw==
X-Received: by 2002:adf:f748:0:b0:20c:86d5:c343 with SMTP id z8-20020adff748000000b0020c86d5c343mr26423046wrp.477.1652344781737;
        Thu, 12 May 2022 01:39:41 -0700 (PDT)
Received: from [192.168.1.8] ([197.57.250.210])
        by smtp.gmail.com with ESMTPSA id c1-20020a5d4cc1000000b0020c5253d8ccsm3584868wrt.24.2022.05.12.01.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 01:39:41 -0700 (PDT)
Message-ID: <191b395a-996b-597e-4ee9-06722ac3c776@gmail.com>
Date: Thu, 12 May 2022 10:39:38 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH net-next v6 2/2] net: vxlan: Add extack support to
 vxlan_fdb_delete
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 jdenham@redhat.com, sbrivio@redhat.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, pabeni@redhat.com,
 vladimir.oltean@nxp.com, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, shshaikh@marvell.com, manishc@marvell.com,
 razor@blackwall.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 GR-Linux-NIC-Dev@marvell.com, bridge@lists.linux-foundation.org
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
 <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
 <20220509154603.4a7b4243@kernel.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220509154603.4a7b4243@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٠‏/٥‏/٢٠٢٢ ٠٠:٤٦, Jakub Kicinski wrote:
> On Thu,  5 May 2022 17:09:58 +0200 Alaa Mohamed wrote:
>> +			NL_SET_ERR_MSG(extack,
>> +						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> This continuation line still does not align with the opening bracket.
> Look here if your email client makes it hard to see:
>
> https://lore.kernel.org/all/ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com/
>
> Same story in patch 1:
>
>>   static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>   			       struct net_device *dev,
>> -			       const unsigned char *addr, u16 vid)
>> +			       const unsigned char *addr, u16 vid,
>> +				   struct netlink_ext_ack *extack)
> and here:
>
>>   static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>   			    struct net_device *dev,
>> -			    const unsigned char *addr, u16 vid)
>> +			    const unsigned char *addr, u16 vid,
>> +				struct netlink_ext_ack *extack)


I will fix it, thanks.

