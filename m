Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0500717C9
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 01:33:41 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id r13so12315590wrr.9
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 18:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=K661SeVjfjm40/ajBVyDtl5qfOYlfB+1y0XGeMywF+w=;
        b=XpLM2Q/7Ny4osrW3Ec9ro1rQR9RBXNcdhRPgPczdiPb9ze20vSUvjSzhPUKlMX+2Dc
         rDBjB+dfEU4qJv+2FJ/uoo8JkpvF3oHd+cWRq6AKY07HKcy8CPBfezLm3ilNKrIeg+k2
         2Vjv5PUwWu6SK9jouPsQ2sZZvXDo7V6loHSjz20aialUkIg6U7x9VqfjFDv6oyBrLNTB
         nW+nMeQYp2kOs8ejApvuGGsY/S61Uon7NyT+ZgFOm16vRlJu2OQhFzJ9C8d4RfLBm3/f
         1TZuNYvRyapTmNk8MIKehKZfpq+eyGJo5hyZlmPFqNeekF68PKaLATovp3Xnf0d7GtTS
         JIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=K661SeVjfjm40/ajBVyDtl5qfOYlfB+1y0XGeMywF+w=;
        b=gfQ7gyQArbgVYXA+Z4//3tgwtt2NdcNFOj/yQyO+mCLG97m28FvhDj+rIbb0PCw49U
         Rl9ymLwDjDgAGQpRiJUR9A3I4rJg1vuorLYqa8RfFetRtzQiMHWvapsYbkSiKgsgvztT
         gYpmMxaXnuzzmRiYwsCuAztZCp2nQdUFTDRpnLcOHfmnUO7pc001eTpTfECjmfWBRnaI
         Aew+Az34n7UpvLmN/yACoZWunF9d3z9iOzb/UL8uXepjriPSYlsPKAkfM0+LsRV4IYBC
         asbq0ZYUea7em3rOA4kIEcSuRdA7ol3c6RyyBBe2AwdicDZXmbAelr9nbsA6Vt2mR9iu
         hMIw==
X-Gm-Message-State: AOAM530b1uk4HKtxRoCjrwxGceFl0+1de1vNQC5pStspxcza+gIUtM8g
	TwTcK1Z+X9FVs1ijVZW5K2U=
X-Google-Smtp-Source: ABdhPJxQhWdthcWPzvheVHKDxtEk6HLcxJeWC+KCsnMjRmtwRzwG3ztGQm/3vZdtZkwLCRVpugpBfA==
X-Received: by 2002:a05:6000:14d:b0:207:a75a:ae0c with SMTP id r13-20020a056000014d00b00207a75aae0cmr990788wrx.398.1650072820100;
        Fri, 15 Apr 2022 18:33:40 -0700 (PDT)
Received: from [192.168.1.14] ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id bs12-20020a056000070c00b00207a2c698b1sm4708190wrb.40.2022.04.15.18.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Apr 2022 18:33:39 -0700 (PDT)
Message-ID: <78253f3a-cdca-166a-ee54-e2173b2be5a7@gmail.com>
Date: Sat, 16 Apr 2022 03:33:37 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] intel: igb: igb_ethtool.c: Convert kmap() to
 kmap_local_page()
Content-Language: en-US
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
 <Ylnmaji5bHHp8t3p@iweiny-desk3>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <Ylnmaji5bHHp8t3p@iweiny-desk3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٥‏/٤‏/٢٠٢٢ ٢٣:٤٠, Ira Weiny wrote:
> On Fri, Apr 15, 2022 at 10:53:07PM +0200, Alaa Mohamed wrote:
>> The use of kmap() is being deprecated in favor of kmap_local_page()
>> where it is feasible.
>>
>> With kmap_local_page(), the mapping is per thread, CPU local and not
>> globally visible.
>>
>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index 2a5782063f4c..ba93aa4ae6a0 100644
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
>> +	kunmap_local(rx_buffer->page);
> kunmap_local() is different from kunmap().  It takes an address within the
> mapped page.  From the kdoc:
>
> /**
>   * kunmap_local - Unmap a page mapped via kmap_local_page().
>   * @__addr: An address within the page mapped
>   *
>   * @__addr can be any address within the mapped page.  Commonly it is the
>   * address return from kmap_local_page(), but it can also include offsets.
>   *
>   * Unmapping should be done in the reverse order of the mapping.  See
>   * kmap_local_page() for details.
>   */
> #define kunmap_local(__addr)                                    \
> ...
Got it , Thanks
>
>
> Ira
>
>>   
>>   	return match;
>>   }
>> -- 
>> 2.35.2
>>
