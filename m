X-GM-THRID: 6609200682225369088
X-Received: by 2002:a81:ad1e:: with SMTP id l30-v6mr9423111ywh.8.1538849541474;
        Sat, 06 Oct 2018 11:12:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8b0c:: with SMTP id i12-v6ls3088694ybl.5.gmail; Sat, 06
 Oct 2018 11:12:20 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61PT9Aoq/Imh6MG1VrQErWNgvtEfcpTwW0xadZuH/a3oJuxBPfx7wXKfdsY/nw80YLMbEW7
X-Received: by 2002:a25:32cd:: with SMTP id y196-v6mr7008784yby.67.1538849540541;
        Sat, 06 Oct 2018 11:12:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538849540; cv=none;
        d=google.com; s=arc-20160816;
        b=CZ041/hPkgwKf7LjCCdNsw4HCIfj6kgudOsBmIuEsGvOUuXcMwX+YShwyTaWC2EX8z
         glWEPUb3XxOHfinJG4CrdlOH69jNTjpGYtcCpUtqzrbUssoNKjwpVnO0ISEEGAlZF7Dr
         LOeXD3/jbR6kNbm87x2crqf/sxT8nq9WWbfTt2T6SCQdiZzl62ZNJ0YVN1pSttaXutcW
         XWcqGvKq8u1T5374nahfEe96EcdrCZyxedsslYFwToA6dgYt3zd0Xq5gbj7b2NvOqrfF
         pdF5EjiLsn5+DeJXEP3duosFQFN4dh7uA5g8piSyd0Rz21nPXwebvGq5kFp3lj3rs4mL
         Ysmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=738kkT25bkFQNHAvJ/jmFVNJZDzXlGpCnLuAHcq2pbY=;
        b=bseGxebnbJoITfVY6LVYwfLHHErQviilYM325lS/XRBlBKikRI5eKo8A/RQCuvB8Ge
         Qps1aLp2MMUi1gQcvjncOYJejdvFQuZMB3siOiyZfediPXmDzF+GIWN6Eks20TAVAOLS
         S7T6mOzkRK8oQUrZ0a7eB3vOUZ94FHUEv3xXo6EQwNsc6vXHj6RBEzGPrSaJCHSQf+BA
         hdGaCq2p8zHXNcmS3p+Zaokb5T83riflx05CD24b5QkMfjnUW69S5SIPJ2471r7chs7G
         Y93Cy1S70bsz3nDw8wEv9iWUaYioPciwamSL9OiTj/1aw8waqk5OzuRFb8GXKA0vZG1l
         bRUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlOXtCys;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id l21-v6si406014ywb.5.2018.10.06.11.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:12:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlOXtCys;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id c10-v6so6094366pgq.4
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=738kkT25bkFQNHAvJ/jmFVNJZDzXlGpCnLuAHcq2pbY=;
        b=nlOXtCys1t1GixsKe2i3zIz7sfLFEWY07Chs8po6JQNNZ9mayMpOG9O09x+CJUYSCR
         VadReHga/SI4+VEYPxMpt39nSscR+586psf617WKhB36nWmm90dMveWWgk5vAly11XdJ
         fm2KjjUL0U65o9k6ePFn1Hh+7VQ34TryOYyL9FoCOu1fMfX8NWTP8m7G8GcWEC5ICpVu
         rovvZt9ei0Dhdk0V4hOm2kk1vkAm3rlUvwvcY4nqkw49FWyKxLA7z6JHPih/JXybhebl
         yESkxXAT57tnKZT0kWHbx2/kjpn1Hh1Q6aN8s5CqkBO2hNWLabAAhqPohLMS1cJxccrq
         DNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=738kkT25bkFQNHAvJ/jmFVNJZDzXlGpCnLuAHcq2pbY=;
        b=fr7d8YSePuPctQ+TS8TofIX46PuiN3YHJRgvEimTI2/IEtbR+67epLarwam+HlTGhx
         nolCKlDgNOqVkz3IFr6M1L35dOnyFEWIDpt0tOBuIibTX2PstPre2qfjs7O647hPQlq0
         h7fUt2cnzmwsoLlfvESP10S8dXLwwoXbUQXnti8QSyh1iYI8X/XsXMfvQ1HJccooLLbi
         71230/7VC3jSrVVZHpY9dJRQCXGRkOfHsGwpvQE6aZYV2dFKTVVP4GSBSNnHaXEkKOBl
         x3bBCmFTY6jAtgvlEtlZBH1bD1RIQSJkDsju+Q4hz9balpNuZEQsjZaLBfSzKaO9j8+j
         aP4Q==
X-Gm-Message-State: ABuFfoiG4YI7tndr+8EaTcUisn0Hf2GIfvNiQk+QTNW5FrzpQ8f0m5Q3
	SEt0u8MXkagV0ETRdPBAs5E=
X-Received: by 2002:a63:f202:: with SMTP id v2-v6mr14535438pgh.371.1538849540119;
        Sat, 06 Oct 2018 11:12:20 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id z3-v6sm24893529pfm.150.2018.10.06.11.12.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:12:19 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Himanshu Jha <himanshujha199640@gmail.com>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175555.GE6283@himanshu-Vostro-3559>
 <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com>
 <20181006180243.GG6283@himanshu-Vostro-3559>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
Date: Sat, 6 Oct 2018 23:42:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006180243.GG6283@himanshu-Vostro-3559>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

>Then please state that reasoning in subject too ...

>Subject: [PATCH v4] .... 


>---
>changelog:

>v4: corrected whitespace error.
>v3: ...
>v2: ...

I made changes mentioned and sent already with Subject:[PATCH v4]. Am I 
supposed to send it again?

On Saturday 06 October 2018 11:32 PM, Himanshu Jha wrote:
> On Sat, Oct 06, 2018 at 11:28:36PM +0530, Bhanusree wrote:
>> Change is not identical. In v3 whitespace error is observed. So corrected it
>> and sent as v4 again.
> Then please state that reasoning in subject too ...
>
> Subject: [PATCH v4] ....
>
>
> ---
> changelog:
>
> v4: corrected whitespace error.
> v3: ...
> v2: ...
>
> And use 'reply-all` please!
>


