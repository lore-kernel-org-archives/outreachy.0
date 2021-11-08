X-GM-THRID: 7025609319157596160
X-Received: by 2002:a2e:a283:: with SMTP id k3mr2332806lja.210.1636365454820;
        Mon, 08 Nov 2021 01:57:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:178b:: with SMTP id bn11ls2515409ljb.7.gmail; Mon,
 08 Nov 2021 01:57:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy6KNvMdgNYVurpiLzMLwANeHT0hUvcT6tMTW+HWiC/ZR70YK90/Cv0tPnxc5MRG2A2r1Qq
X-Received: by 2002:a2e:9197:: with SMTP id f23mr10964752ljg.235.1636365453307;
        Mon, 08 Nov 2021 01:57:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636365453; cv=none;
        d=google.com; s=arc-20160816;
        b=wT3945I5T9I4BSboob+mP9pJczdky6XID/+aAQZnSkDm+AjpWq0jUM8znz3NK9Vu2U
         KVuMPCHewOhXpXK/ktz4WIzQenB+szQ+MbTy3hGGRv8YXf3WU2uQ3nG+/zEKCJKwNiK5
         mO5EvS6nnQu9md83aHkLuhPyCmxq3oBrwkOsYnovHesUEBJcdcOAtUCB+is8vpXnozo/
         rg7N1FkmdL+ymKSnwL71ct9wIWklGs6kR724TamQoMMxWV4WSnIrUyKce/tTw19NlqKs
         WR9dJ2qxzdp8o1kMz2LMzxpH86rCzSGsC2BFXW6FKzHt7OFsKzq1ocycU9NafQl2491x
         Y2ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=kOUbhllrGgmpU45GMJothVqWnhtxz4cIj2zv5C1qMWk=;
        b=FH7eJ4Gg/NQHn1BKsPeKRNWPeEpmDppDwjioP4WQ1ZMyTCqsaH+FsTAZn2EBwpXLl0
         rdTftyalzT3t47Dpx5wSRBgkNPL+x8pecaMp9oCvA5Ir69Y9BzaV8k8iAlgyY8oYNMjm
         E4RNc1RWzdL4vGckMOJ+UVGrnwcl98135MX2aeLZsC4XAiLYAFdp32OQxKvbIZCPI1l0
         mZ4kFCxyqC57pwJYVSQUYKe3UIMf1/qa3OwNmN4bf/V2Npf3vS5iCQDXikU8fnZaNuzl
         LVjqIgHWobVtnZejivQ8mNyMYreajfNi6XYClZj4yI6ImN9eoVNXOEaAK0mG/oOQhRj9
         44OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oQBdMvS4;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id i16si18228lfv.2.2021.11.08.01.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 01:57:33 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oQBdMvS4;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id b12so25796556wrh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Nov 2021 01:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=kOUbhllrGgmpU45GMJothVqWnhtxz4cIj2zv5C1qMWk=;
        b=oQBdMvS4KhzP9XZLtihtlQjZay5WL9YgNRwpEZsNQ8c5RhtCKzDNkrNUpBHVgJMA8Z
         hdR9qkW/20y/bhNkqFX9pFUpJuVjeicAqADHFJE/cVFJ6CsI2UsRB7+R7qguW9/QerXr
         TEwz24q0kXdt6phkXxkzdS7WBlcG5BkzwUN7hGxzUBSAFneS9A06eQee+Hu+RL1NWB3N
         DE5N/9TEWC2DxsxcBb2HNgdg0ZiO5H+l0YVmryVK/JZVDFjDd8poG3hDeQ4Rqr7G7MAL
         w6JGJuSbaQXdfs0PS1OL7+MWJqE7CJwZeK4b0zCmTOQWqbLofenvbujzq3sGG7ub0T/U
         RTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kOUbhllrGgmpU45GMJothVqWnhtxz4cIj2zv5C1qMWk=;
        b=W9Z9FRdCYjqSrwAik5s2dxcq5bh+PsybmeibUWbFzZ7taHFHJUIxnq1vipmwlpFAWu
         gzU7gphCudKWBvi7Y0KWHW8UQDPwAVHrk2PLQ3O+XRUDu/1Z7Hb1Ycv/H4l6T5UiT4Mc
         fdhaPDqH8adIGxFVVRmiACJnx4JohnhHqSZSOP28WGPNhPzDxWDqA2Ivnz8IyM6z8zI6
         34mwyITeGOLRGXg13BQb/SuKvydyNv7uOJ8kdgAHbveErI4clvXPUYEnA8GC6xatnJMd
         ld4KeGi/4tid9c/8xF5JetS/2IlhsZnWjJMJ56u1Qs9nFfMD3xqg+3Z+OJ6RSCVIMxrK
         3ekQ==
X-Gm-Message-State: AOAM531zccoa880eb9fX+COpsaH6+KliQXDhOd/3MTtB6pRUSWWrPEhM
	QPSV9GP2zZJ30o4HNWxq5I84yflBK1puEg==
X-Received: by 2002:adf:f787:: with SMTP id q7mr78460918wrp.1.1636365452804;
        Mon, 08 Nov 2021 01:57:32 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id f6sm15600793wmj.40.2021.11.08.01.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 01:57:32 -0800 (PST)
Message-ID: <0a4c26bdabadd666ddf124bbb767e5cc802af937.camel@gmail.com>
Subject: Re: [PATCH v2 3/8] staging: vt6655: Remove unused `i` increments
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Mon, 08 Nov 2021 09:57:25 +0000
In-Reply-To: <20211104133803.GC2794@kadam>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
	 <79a4f03c8f2bfa555ea149ddd1c0f938dd431a0b.1635773680.git.karolinadrobnik@gmail.com>
	 <20211104133803.GC2794@kadam>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Dan,

Thanks for taking a look at my patches.

On Thu, 2021-11-04 at 16:38 +0300, Dan Carpenter wrote:
> On Mon, Nov 01, 2021 at 02:32:01PM +0000, Karolina Drobnik wrote:
> > Commit c569952d92ba ("staging: vt6655: Use incrementation in
> > `idx`")
> > rendered the incrementation of `i` outside of the loop unnecessary
> > so it can be deleted.
> > 
> 
> That commit hash is something that only exists on your system. 
> Commit hashes are stable once they hit Greg's tree (he only rebases 
> in extremely rarely cases).

Ok, I can rewrite the message but I'm not sure how should I refer to
another patch from my patch set. I followed these guidelines[1] but if
there's a different way of describing it then please let me know.

> This commit is cleaning something that was left in a different patch
> in the same patch set.  Just merge it into the original patch.  Don't
> make a mess and then fix it.

I tried adding more than one logical change per patch some time ago and
Greg asked me to stop doing this.

> It's tricky to know how to break up patches.  My suggestion is:
> patch 1: remove all the unnecesary (unsigned short) casts
> patch 2: merge the rest of patches 1-3 together and send it at once

Sounds good. If Greg is happy with your approach, I can merge these
patches, no problem. 


Thanks,
Karolina

---------------------------------------------------------------
[1] -
https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L106


