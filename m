X-GM-THRID: 6389791832562204672
X-Received: by 10.28.148.199 with SMTP id w190mr71321wmd.19.1487840174546;
        Thu, 23 Feb 2017 00:56:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.143 with SMTP id m137ls204379lfm.51.gmail; Thu, 23 Feb
 2017 00:56:13 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr3880024ljj.30.1487840173721;
        Thu, 23 Feb 2017 00:56:13 -0800 (PST)
Return-Path: <arend.vanspriel@broadcom.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id v70si351001wmf.0.2017.02.23.00.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 00:56:13 -0800 (PST)
Received-SPF: pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com;
       spf=pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=arend.vanspriel@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: by mail-wm0-x22a.google.com with SMTP id v77so5428933wmv.0
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 00:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=8DJwt9GWEJg/Xjtznq1ogncgdEOcptu7NJesryo23ic=;
        b=gNm7PIOZdwt/nB7+DY9HXLZiMFcS+dlA2assNNN10JZKXV9iTdd+/5I3zXUvT8tquW
         MyNKb59piCHIai7F4k0nFkQlYiqsrcdoEafjZXFtjdthNJJqF6iI23PdEbONiUnDLNaD
         ixS96XoqY7v1Yr3Db/AmpL1NQsTUrfSOmp5ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=8DJwt9GWEJg/Xjtznq1ogncgdEOcptu7NJesryo23ic=;
        b=olhDcjlrZC6LSs8B2F8ffaaxxLN7cJXuTC09ivRKkjdyFrELlGFUmjlfCks9oRbAIq
         1BnnTvPDbbdoQVLIADou7JtpMRnhlGZgOHzb2yMcWd/9PTfL49EwJ85mJr1Lyjpl18eU
         Ei4gttbaNlAKp130CqXwUX2Vjr8fFYIt9+fssgn5hHELyvoRoXp2OIOruRCCV+AFYxHC
         gBdgbxIqYMif36KyjFMJ5mF0SDXfhZyTSaCE8AwEZ6HQ4x9vh+ypfSqhx/ViDL85sZVs
         W2VmXqGHjnwDST2jgrEeja6C+REs3hwyPWID5gx/qb+Q/x5UsKftUfwUY8n5A+JKPMxY
         VLDg==
X-Gm-Message-State: AMke39l6mbRqCle8F8UfxN602J3XeeqH7/rb+5HXGY54YU3++5lgk4N7EpU7fMUAqeeoynUo
X-Received: by 10.28.10.68 with SMTP id 65mr1758721wmk.63.1487840173413;
        Thu, 23 Feb 2017 00:56:13 -0800 (PST)
Return-Path: <arend.vanspriel@broadcom.com>
Received: from [10.177.251.129] ([192.19.248.250])
        by smtp.gmail.com with ESMTPSA id o70sm5426720wmi.26.2017.02.23.00.56.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 00:56:12 -0800 (PST)
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: wilc1000: renames
 struct tstrRSSI and its members u8Index, u8Full
To: Julia Lawall <julia.lawall@lip6.fr>, Tahia Khan <tahia.khan@gmail.com>
References: <20170222171403.GA20626@coolbox>
 <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com>
 <20170223035400.GA9378@coolbox> <alpine.DEB.2.20.1702230804410.2203@hadrien>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
 ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, devel@driverdev.osusl.org,
 linux-kernel@vger.kernel.org
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <1ffdd756-aaa4-5e1e-b72f-3e5d1f2daeb2@broadcom.com>
Date: Thu, 23 Feb 2017 09:56:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1702230804410.2203@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 23-2-2017 8:08, Julia Lawall wrote:
>> Thanks for the feedback Arend, I really appreciate it. I've decided to go with
>> these changes in my follow-up patch request:
>>
>> - rename tstrRSSI to 'rssi_history_buffer' as Aren suggested since it makes the
>> purpose of the struct clear
>> - remove Hungarian notation from all tstrRSSI members' names
>> - change type of u8Full to bool since it's only ever 1 or 0
>> - change name of as8RSSI to 'samples' since this buffer is only ever used to
>> compute an average, and the "rssi" prefix is implied by the struct's name
>> - rename str_rssi to rssi_history in the network_info struct for clarity
>>
>> Since my reasoning for these changes deviates from just "renaming to
>> avoid camel casing" (as in the original checkpatch.pl warning), would it still
>> make sense to submit all this in a single patch? I know my commit message
>> needs to change but I wonder if this is too much detail.
> 
> I would strongly suggest not to do it all in a single patch.  Even if these
> changes are not very complicated conceptually, there is always a chance of
> doing things wrong.  Taking the problems one by one will improve the chance
> that the result is correct.  Also, the results will be easier for you and
> others to review if each patch only does one thing.  And easier to revert
> if needed later if something goes wrong.

It is all related to cleaning up stuff in a single struct which I
consider "one thing" here. To me it looks a bit silly if you rename one
struct member when it is obvious that the other two need to be renamed
as well. The only somewhat sensible split I see here is: 1) rename the
struct itself, 2) rename the struct members, and 3) rename str_rssi
member in struct network_info.

Regards,
Arend

