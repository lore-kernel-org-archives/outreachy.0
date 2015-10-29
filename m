X-GM-THRID: 6210381585761435648
X-Received: by 10.182.233.229 with SMTP id tz5mr769411obc.26.1446115996534;
        Thu, 29 Oct 2015 03:53:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.106 with SMTP id xv10ls86169obc.11.gmail; Thu, 29 Oct
 2015 03:53:14 -0700 (PDT)
X-Received: by 10.182.245.163 with SMTP id xp3mr752935obc.19.1446115994757;
        Thu, 29 Oct 2015 03:53:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id z62si56054ywb.4.2015.10.29.03.53.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 03:53:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x236.google.com with SMTP id b65so30217739qgb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 03:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tvnTLSkADmr+Xct4SCYmN4giulZSHbUSjNTEBuyuodk=;
        b=RJAJHGD9uS94sHv10c4bjl25RZwpEapUdmtbJ3Oy6SNXeQcuv9ZeirrnqqsYJtdVbi
         dzFOW4+Z6kRXopRXpYYVlQ0bWiCg3juA9V0d10n/g0DkeM1CdNn0C1bRNPVJmeKvSXIG
         BgZuEUhrANei/8GxuQ93N7wkm19bcKy1QEzZHgwcPJjqCl1ktJ7wXMIO9uq/fW2XxPbW
         0GMigBKrKMHvj3XxBrzpeewJcNlj7XBU31MxWeGx3awAHZ6bpqu6kcJzL7Rz29ThrY7j
         lx7GxPuQ877c6IYvfY42Jbusy9PaScvyNzJFy3TSajIzbwcjUyjnL1dA6pNsfair8+TC
         U/SQ==
MIME-Version: 1.0
X-Received: by 10.140.91.135 with SMTP id z7mr1093851qgd.91.1446115994575;
 Thu, 29 Oct 2015 03:53:14 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 29 Oct 2015 03:53:14 -0700 (PDT)
In-Reply-To: <20151029104034.GB1331@sudip-pc>
References: <cover.1446098996.git.amitoj1606@gmail.com>
	<9efda1f2e9d8126a6d0468e442ff68aa27031e25.1446098996.git.amitoj1606@gmail.com>
	<20151029104034.GB1331@sudip-pc>
Date: Thu, 29 Oct 2015 16:23:14 +0530
Message-ID: <CA+5yK5Eo3ifCCoZAbJ0sPcK5VW8s7MhM-By0iRJPm4gms2i79A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: rtl8188eu: core:
 Remove wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 4:10 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Thu, Oct 29, 2015 at 11:52:35AM +0530, Amitoj Kaur Chawla wrote:
>> Remove wrapper function issue_probereq() that can be replaced by a
>> single line of code and rename _issue_probereq() to issue_probereq().
>>
>> This patch also fixes line over 80 characters checkpatch.pl warning.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>> Changes in v2:
>>         -Renamed _issue_probereq() to issue_probereq()
>>
>>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 41 ++++++++++++++++-----------
>>  1 file changed, 24 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> index 0270755..d3b92c5 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> @@ -608,7 +608,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
>>       return;
>>  }
>>
>> -static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
>> +static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
>
> Not related to your patch. But maybe in a later patch you can change
> int wait_ack to bool wait_ack, as it is only taking true and false as
> its argument.
>
> regards
> sudip

Okay, I'll send that as a separate patch.

-- 
Amitoj

