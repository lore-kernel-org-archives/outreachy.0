Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08362567
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 13:18:17 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id t1so13536752wra.4
        for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 06:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UXVIgoFYs8vsH8vpoCLGmkcmYfTHRALX33Ntdgh3h50=;
        b=i5R7voAqMw3IkNbZ205uB3jZh7KrTyvi4z2SN5EULNf3WJEl+edvTXfn1zC8FtiiUn
         YFVTnzqbWUhfpHsqfdd+9z+6UD9inu0TRL7ftH81gbunCkZdwg0BAH6vgjxCQTsaH9Th
         85/PeFeeuxShAatHYiomslhvUrbFX0jXYwRdZGiNR742qG4umdSm5berad8Gf+YB7S1S
         flXaZetPTQrIWrqLCsAFv+AoGXDZmx6KvkPSDj3lgMPKhM4zXGMdjqmLB4J0/QjuH/3A
         R/MI66r9eNm0leJG0C4U40tXX+WdnjDsj693/hnLnEXhuF4jsGOOmVTdB3s5XQzCpJSX
         qQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UXVIgoFYs8vsH8vpoCLGmkcmYfTHRALX33Ntdgh3h50=;
        b=m3KYPZAuccEZTU8QDnsua+wr7n9uxqzzelSK0JBbtYxzGEKba/vj+iFpfq9YuDfkue
         CV0YzQAU2ACaXGkC1As3a/ZJsugwX14Zzd2JXXgBJadS87yonXa0OsDXy39BGoVqj0+T
         rQoBCXE8HV2d5fJWixY6a953WLLYTjMZk1GqKwo56JhSfmPOW/cPISIdg1vrgVsq7Mt/
         juuuAlKEGpf2mcVLeKEl1ctuIXfEI82YYtqp74v6siURc0ObiGe63kvdipo4v5oLN8G/
         C7knXL+kxvnGrpYYCV5ER0S2RopIWZhRIH4x+csYEWtiARbvaZjwcdp0NIWBZqo/Zdm2
         +KeQ==
X-Gm-Message-State: AOAM531IaJfesKah7el1WwdhkcYSy157BDv95TGcpgsg4aIxHPfxy35R
	0F3nbcA2vS5STZoL1jk4Qj8=
X-Google-Smtp-Source: ABdhPJyJ06sKHsPB4+wIBhVC0HslxWUz7QAdEMKT8yyqPoyR/rswgpyfI3awyjFXTK+20cmJdmZsTQ==
X-Received: by 2002:a05:6000:1684:b0:209:7fda:e3a with SMTP id y4-20020a056000168400b002097fda0e3amr2454676wrd.709.1650115095860;
        Sat, 16 Apr 2022 06:18:15 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id d6-20020a5d5386000000b0020a79c74bedsm4451623wrv.79.2022.04.16.06.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Apr 2022 06:18:15 -0700 (PDT)
Message-ID: <857a2d22-5d0f-99d6-6686-98d50e4491d5@gmail.com>
Date: Sat, 16 Apr 2022 15:18:13 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3] intel: igb: igb_ethtool.c: Convert kmap() to
 kmap_local_page()
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ira.weiny@intel.com
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٦‏/٤‏/٢٠٢٢ ١٣:٣١, Julia Lawall wrote:
>
> On Sat, 16 Apr 2022, Alaa Mohamed wrote:
>
>> Convert kmap() to kmap_local_page()
>>
>> With kmap_local_page(), the mapping is per thread, CPU local and not
>> globally visible.
> It's not clearer.
I mean this " fix kunmap_local path value to take address of the mapped 
page" be more clearer
> This is a general statement about the function.  You
> need to explain why it is appropriate to use it here.  Unless it is the
> case that all calls to kmap should be converted to call kmap_local_page.
It's required to convert all calls kmap to kmap_local_page. So, I don't 
what should the commit message be?

Is this will be good :

"kmap_local_page() was recently developed as a replacement for kmap().  The
kmap_local_page() creates a mapping which is restricted to local use by a
single thread of execution. "
>
> julia
>
>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>> ---
>> changes in V2:
>> 	fix kunmap_local path value to take address of the mapped page.
>> ---
>> changes in V3:
>> 	edit commit message to be clearer
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index 2a5782063f4c..c14fc871dd41 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
>>
>>   	frame_size >>= 1;
>>
>> -	data = kmap(rx_buffer->page);
>> +	data = kmap_local_page(rx_buffer->page);
>>
>>   	if (data[3] != 0xFF ||
>>   	    data[frame_size + 10] != 0xBE ||
>>   	    data[frame_size + 12] != 0xAF)
>>   		match = false;
>>
>> -	kunmap(rx_buffer->page);
>> +	kunmap_local(data);
>>
>>   	return match;
>>   }
>> --
>> 2.35.2
>>
>>
>>
