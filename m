Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053DC7C
	for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 18:59:48 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id bv16so17977860wrb.9
        for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 11:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
        b=WwQHeOrWBO3Xhjgz+UueEcCs69FxpEIIQ6Y897xnnVOKr2y3oqq9bH/NbSRdLepY8m
         svuNmKA9VbRH7eboFBwvCpCeDDF0oqvxi9nmToG+8YqBlaVyzCPDwVRsdVpQ17gFttWO
         LWfQo0Qo2BuXuVMM1nsPbhraighTsW4D7RXIcRaRH5IsvEvzqJ8YeLo5gUmGrLDXsQ5f
         F1YWimulAVHvDgHF39OjMdmoaXSYnHDfLdhATUUQeMte9qU03jsEWw2atMeIlZjLD8Ts
         gZEiitddqUvpKB3A5ddmgdLkgOar88dTlpZ6Fgov2lx+Xw78XsKwjiILIXhWCWtOfdaA
         8eNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
        b=3R2/92ug/P8JqahcBXeHtXCD++5vNOb422IQvihZUp7sCtfnm9PyWN3MHt77U4IBRF
         hxhUFOPio3eKqz/Mcmza/5AIskNSKkB/AX7l/Hz9XouPDv/JbbsziTFskqOuB56fcY54
         kWi9l/VTX1tyHiVd8tavVLAxWqViQmO9qRJjw0LZrtwW81tng7HDEXpn0iWlt/913ovG
         cQ2Kjtv2WYQbnelTyoTdO4L+J2yiq5L6tPLWpvRZCDdyk2rN8Vx4ss9WFwi/nW9M+9NK
         KI9qi6Y44dusBghBUIf2HGF82Ki95YmbGhDWFZvNonSsocoInU9NyE/SfUumDgR+gvZ2
         yA1g==
X-Gm-Message-State: AOAM533zUrwvr7vjeitsq0jGDnPLYR4DubVe6DZONrlKhnyEkXLZRYYe
	NRG4+ZUlGEH0AZVVY6rLkjfRsVVeWUGeIA==
X-Google-Smtp-Source: ABdhPJxPPxL52UOgSeebd7hxhdRrnGgQpveMSkz2hQaRwG3p298ySC3BTHwdztZ2IFvy2MebH2XfgA==
X-Received: by 2002:a5d:588a:0:b0:204:1f72:2d90 with SMTP id n10-20020a5d588a000000b002041f722d90mr11707294wrf.651.1650826787183;
        Sun, 24 Apr 2022 11:59:47 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84])
        by smtp.gmail.com with ESMTPSA id v18-20020adfc5d2000000b0020589b76704sm7878857wrg.70.2022.04.24.11.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 11:59:46 -0700 (PDT)
Message-ID: <e8ca868f-bbd6-c638-310c-d9c36aedb5d3@gmail.com>
Date: Sun, 24 Apr 2022 20:59:44 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH net-next v3 2/2] net: vxlan: vxlan_core.c: Add extack
 support to vxlan_fdb_delete
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 jdenham@redhat.com, sbrivio@redhat.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, vladimir.oltean@nxp.com, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, shshaikh@marvell.com, manishc@marvell.com,
 razor@blackwall.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 GR-Linux-NIC-Dev@marvell.com, bridge@lists.linux-foundation.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
 <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ٢٤‏/٤‏/٢٠٢٢ ٢٠:٥٦, Julia Lawall wrote:
>
> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>
>> On ٢٤/٤/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
>>> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>>>
>>>> Add extack to vxlan_fdb_delete and vxlan_fdb_parse
>>> It could be helpful to say more about what adding extack support involves.
>>>
>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>> ---
>>>> changes in V2:
>>>> 	- fix spelling vxlan_fdb_delete
>>>> 	- add missing braces
>>>> 	- edit error message
>>>> ---
>>>> changes in V3:
>>>> 	fix errors reported by checkpatch.pl
>>> But your changes would seem to also be introducing more checkpatch errors,
>>> because the Linux kernel coding style puts a space before an { at the
>>> start of an if branch.
>> I ran checkpatch script before submitting this patch and got no error
> OK, whether checkpatch complains or not doesn't really matter.  The point
> is that in the Linux kernel, one writes:
>
> if (...) {
>
> and not
>
> if (...){
>
> You can see other examples of ifs in the Linux kernel.


Yes, got it. I will fix it.


Thanks,

Alaa

>
> julia
>
>>> julia
>>>
>>>> ---
>>>>    drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
>>>>    1 file changed, 25 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/net/vxlan/vxlan_core.c
>>>> b/drivers/net/vxlan/vxlan_core.c
>>>> index cf2f60037340..4e1886655101 100644
>>>> --- a/drivers/net/vxlan/vxlan_core.c
>>>> +++ b/drivers/net/vxlan/vxlan_core.c
>>>> @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev
>>>> *vxlan, struct vxlan_fdb *f,
>>>>
>>>>    static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>>>>    			   union vxlan_addr *ip, __be16 *port, __be32
>>>> *src_vni,
>>>> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
>>>> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct
>>>> netlink_ext_ack *extack)
>>>>    {
>>>>    	struct net *net = dev_net(vxlan->dev);
>>>>    	int err;
>>>>
>>>>    	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
>>>> -	    tb[NDA_PORT]))
>>>> -		return -EINVAL;
>>>> +	    tb[NDA_PORT])){
>>>> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are
>>>> mutually exclusive with NH_ID");
>>>> +			return -EINVAL;
>>>> +		}
>>>>
>>>>    	if (tb[NDA_DST]) {
>>>>    		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
>>>> -		if (err)
>>>> +		if (err){
>>>> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>>>>    			return err;
>>>> +		}
>>>>    	} else {
>>>>    		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>>>>
>>>> @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
>>>> struct vxlan_dev *vxlan,
>>>>    	}
>>>>
>>>>    	if (tb[NDA_PORT]) {
>>>> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
>>>> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*port = nla_get_be16(tb[NDA_PORT]);
>>>>    	} else {
>>>>    		*port = vxlan->cfg.dst_port;
>>>>    	}
>>>>
>>>>    	if (tb[NDA_VNI]) {
>>>> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>>>>    	} else {
>>>>    		*vni = vxlan->default_dst.remote_vni;
>>>>    	}
>>>>
>>>>    	if (tb[NDA_SRC_VNI]) {
>>>> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>>>>    	} else {
>>>>    		*src_vni = vxlan->default_dst.remote_vni;
>>>> @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
>>>> struct vxlan_dev *vxlan,
>>>>    	if (tb[NDA_IFINDEX]) {
>>>>    		struct net_device *tdev;
>>>>
>>>> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>>>>    		tdev = __dev_get_by_index(net, *ifindex);
>>>> -		if (!tdev)
>>>> +		if (!tdev){
>>>> +			NL_SET_ERR_MSG(extack,"Device not found");
>>>>    			return -EADDRNOTAVAIL;
>>>> +		}
>>>>    	} else {
>>>>    		*ifindex = 0;
>>>>    	}
>>>> @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct
>>>> nlattr *tb[],
>>>>    		return -EINVAL;
>>>>
>>>>    	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>>>> -			      &nhid);
>>>> +			      &nhid, extack);
>>>>    	if (err)
>>>>    		return err;
>>>>
>>>> @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm,
>>>> struct nlattr *tb[],
>>>>    	int err;
>>>>
>>>>    	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>>>> -			      &nhid);
>>>> +			      &nhid, extack);
>>>>    	if (err)
>>>>    		return err;
>>>>
>>>> --
>>>> 2.36.0
>>>>
>>>>
>>>>
> >
