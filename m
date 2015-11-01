X-GM-THRID: 6212095586717401088
X-Received: by 10.182.120.3 with SMTP id ky3mr13592216obb.6.1446368588447;
        Sun, 01 Nov 2015 01:03:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.40 with SMTP id dx8ls707499obb.74.gmail; Sun, 01 Nov
 2015 01:03:08 -0800 (PST)
X-Received: by 10.182.24.170 with SMTP id v10mr13200704obf.17.1446368588111;
        Sun, 01 Nov 2015 01:03:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22e.google.com (mail-qk0-x22e.google.com. [2607:f8b0:400d:c09::22e])
        by gmr-mx.google.com with ESMTPS id y206si1090982ywd.6.2015.11.01.01.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:03:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) client-ip=2607:f8b0:400d:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22e.google.com with SMTP id n129so47659830qkc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=McRAk7BD68g/akZIBNnqOZyJSL4nsKQ2BS7bV5xXI0g=;
        b=BHNU35vjWjuHPgZDHhal6BX1u18+Uj9wefcwv+H/TLphLNNsqG7nR9fYl0F4ilq/cS
         2X6P+9KC/hOd2bWisbxvpTHoHD7e2BhDoY4cjcfzVM7mrBSFBT48oAtDye1XgrVWkKVY
         kTD6MZzwcILENQXMBWCcjuQTQwsBHQ/K9jsgehpUnIXSpPDfUtkNY1sB8Nhkv6oRxsyH
         VQcASXlURX7EMAypx3k3kdb10j944Lecqpmgcnd8FO+OPBqEvlEC9StTHrjfji+ka/bJ
         1OZzm8MqtLYQafMKf+ghh5xEFSxG/aQJkg7aW1uUbQ05u59YbyaexmKDCalJjOlTcm3j
         de6A==
MIME-Version: 1.0
X-Received: by 10.55.203.20 with SMTP id d20mr6756755qkj.57.1446368587922;
 Sun, 01 Nov 2015 01:03:07 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:03:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511010942530.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010942530.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:33:07 +0530
Message-ID: <CA+5yK5FrkzY+_YZde7e-Y5EUtAFh5H8niFo-=neivh8JQ7MDBw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: rdma: hfi1: Remove
 set_sbus_fast_mode() wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> Drop set_sbus_fast_mode() wrapper function that can be replaced by
>> a single line of code.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rdma/hfi1/chip.h     |  1 -
>>  drivers/staging/rdma/hfi1/firmware.c | 15 ++++++---------
>>  drivers/staging/rdma/hfi1/pcie.c     |  3 ++-
>>  3 files changed, 8 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/staging/rdma/hfi1/chip.h b/drivers/staging/rdma/hfi1/chip.h
>> index f89a432..092fc9d 100644
>> --- a/drivers/staging/rdma/hfi1/chip.h
>> +++ b/drivers/staging/rdma/hfi1/chip.h
>> @@ -619,7 +619,6 @@ void sbus_request(struct hfi1_devdata *dd,
>>                 u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
>>  int sbus_request_slow(struct hfi1_devdata *dd,
>>                     u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
>> -void set_sbus_fast_mode(struct hfi1_devdata *dd);
>>  void clear_sbus_fast_mode(struct hfi1_devdata *dd);
>>  int hfi1_firmware_init(struct hfi1_devdata *dd);
>>  int load_pcie_firmware(struct hfi1_devdata *dd);
>> diff --git a/drivers/staging/rdma/hfi1/firmware.c b/drivers/staging/rdma/hfi1/firmware.c
>> index 5c2f2ed..0ce9a16 100644
>> --- a/drivers/staging/rdma/hfi1/firmware.c
>> +++ b/drivers/staging/rdma/hfi1/firmware.c
>> @@ -987,7 +987,8 @@ void fabric_serdes_reset(struct hfi1_devdata *dd)
>>       ra = fabric_serdes_broadcast[dd->hfi1_id];
>>
>>       acquire_hw_mutex(dd);
>> -     set_sbus_fast_mode(dd);
>> +     write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
>> +                             ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>>       /* place SerDes in reset and disable SPICO */
>>       sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
>>       /* wait 100 refclk cycles @ 156.25MHz => 640ns */
>> @@ -1214,12 +1215,6 @@ void release_hw_mutex(struct hfi1_devdata *dd)
>>       write_csr(dd, ASIC_CFG_MUTEX, 0);
>>  }
>>
>> -void set_sbus_fast_mode(struct hfi1_devdata *dd)
>> -{
>> -     write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
>> -                             ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>> -}
>> -
>>  void clear_sbus_fast_mode(struct hfi1_devdata *dd)
>
> set_sbus_fast_mode seems to be the pair of clear_sbus_fast_mode just below
> it, so it's not clear that it is a good idea to remove one and leave the
> other.
>

clear_sbus_fast_mode() is not a wrapper function. So I didn't remove
it. But if you think one change without the other is pointless then I
can drop this.

-- 
Amitoj

