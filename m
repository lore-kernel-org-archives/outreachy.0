X-GM-THRID: 6809468497850007552
X-Received: by 2002:a37:2fc3:: with SMTP id v186mr877049qkh.311.1585586967963;
        Mon, 30 Mar 2020 09:49:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls7116293qtc.9.gmail; Mon, 30 Mar
 2020 09:49:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt+3DrDsedZ62pfTi9SVmJqE+c+5sZuOhRRihUXgg0VYVibPk/osqcTt6caoCCC3U09t+/A
X-Received: by 2002:ac8:6890:: with SMTP id m16mr885999qtq.5.1585586966463;
        Mon, 30 Mar 2020 09:49:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586966; cv=none;
        d=google.com; s=arc-20160816;
        b=0ceGxYhwMGTQqolMeI1eGgTFIP5pUujyMxnUvsCd6/GlxjK+7OqSabrYcn9HAAHCUl
         EOQHwUhFo3+oGjc8USAbCal1ZwW7xfhHP1wHDIu6TdGK7tmE9m9aGvfI50VUvYOrqNRz
         FqdVNS7nGbrqsEWfO7xj9JchvzzU8lz6GWGK6dhHrRzigHFPki7qPeFYICheKSRvsnwr
         +9MxF0i8oM1MC/j6cHGzYnxCqA1hlM34CzmgIv5/KBHDGGKZ3jyOwAuEbnXFfCTKZkPF
         +VTi295jyJI/PkqWx8iJXXu8/NcB1g9brYmEPLe1vkHn1ve0tMC0I9u6GhrTj5aku2cu
         mOVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=gx8Kl8+EY+rcRBFr5LGlmy7WmWDFnO/S1WsycTlgciI=;
        b=0fS1yaU05P13u+7T9xmtdZ7ogS6v8lTtP1TlKphyTLujBUsoJTbcQpngnmow0zi8+v
         LkpcOHosSwLUMAv44KLrgZ+fzapzlnVprZjmWCv/NEd1ogQ0VWKRBN9GMy1rEW8XOqfY
         YVao1dTI58QLDoL+DyxixRcIsN0TXs8xZDFpKHfWTHJ3f6pDGf+zhqRvdaZiBJsDuIB/
         7ACNdt5sWCY6nD79k3MllSaWiWn0MF5kzyccxFtSdHMtSkFZJKi/PN2C9RmMzvdSiO1S
         VjQeMHWR+VEPsVrL4E881N1HDS6D0vvhV3SAxcmov05d7JJp21Dv8G5QbJNNzkI9BnzO
         OvBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlBhFaJp;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x11si878237qka.4.2020.03.30.09.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlBhFaJp;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id l14so1797114pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=gx8Kl8+EY+rcRBFr5LGlmy7WmWDFnO/S1WsycTlgciI=;
        b=AlBhFaJpybQjT+Y/R1/ukeYB8p7OXgFWmlij6thTPNfDrjqf12rMx3IRH7bg5p6ql6
         DPl8LDEIaW4+x6aiLqi2bR+6/RkniLZ3ajBUCzE65LOdEAtaN4IabsmyA7uJlQSb1cKq
         eNoUcEN7AWtUXbkSKw5UnubTYhIJWS5NTXeLhQV6MU5LbEbB8B0BV/6T6yGSkrkdcUWY
         m/3YW5cMULoqZLL0Ujkx+RnuZMAoZuSqlN9SXa/mo0PSrL4XrB+Oz9WF265Ei1ky8n6m
         wkCy7YZbAWqtbEOXA7RMq9RAuJWnEmggxo/hrORxKeC7u36jH1s4h9cij+ufDWSmSF/A
         yWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gx8Kl8+EY+rcRBFr5LGlmy7WmWDFnO/S1WsycTlgciI=;
        b=VZI2PAqQ0l5lPdMDfOWeW2h8dZpDrfGCQlQQR3rFaXdOIyobjSndy6ysdKxLDWZSJw
         g835bgjRREYcvzjJopSoZLpyIZx4/+1s2VDHP7x431I8zs27LD78sdKWBKNWHaQupMfI
         GYeLFz7qkdP98FRC55nM2+EqRQ7YHCRXx7kDqyOafSE20S+i6HRf7EsuPTZ7K6x9f+1B
         g57XLFWq7Z8DfS1hrucAOUQfY0fzVrWGrirzT+h2cvnpP7UmpBsTB6NfL24yvsuU276B
         gIl4YqHWiKDyo4cAEmrsWZMAOHnh37H46mY+KTRiabpv9l2Y1rmxPawJdbxUCwnJrU+o
         /lCA==
X-Gm-Message-State: ANhLgQ14gFNfH6xDuTWL2CumoaE4s9oeAL49GxmFc4QSwbtSxu5EBX+d
	CY9stUJCpJGr3jsvpH8iuYj3PipIbeZKCQ==
X-Received: by 2002:a63:18b:: with SMTP id 133mr13911508pgb.422.1585586965663;
        Mon, 30 Mar 2020 09:49:25 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id h4sm10587870pfg.177.2020.03.30.09.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 09:49:25 -0700 (PDT)
Message-ID: <5bc717b81ae009b5a1e47607f23afd3b3c23b102.camel@gmail.com>
Subject: Re: [PATCH v3] staging: vt6656: add error code handling to unused
 variable
From: John Wyatt <jbwyatt4@gmail.com>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
  Stefano Brivio <sbrivio@redhat.com>, Forest Bond
 <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Colin Ian King <colin.king@canonical.com>, 
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 30 Mar 2020 09:49:19 -0700
In-Reply-To: <20200330154600.GA125210@jiffies>
References: <20200329084320.619503-1-jbwyatt4@gmail.com>
	 <20200330154600.GA125210@jiffies>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 16:46 +0100, Quentin Deslandes wrote:
> On 03/29/20 01:43:20, John B. Wyatt IV wrote:
> > Add error code handling to unused 'ret' variable that was never
> > used.
> > Return an error code from functions called within
> > vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > v3: Forgot to add v2 code changes to commit.
> > 
> > v2: Replace goto statements with return.
> >     Remove last if check because it was unneeded.
> >     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> 
> Because it's after the comment line (---), this Suggested-by tag will
> be
> stripped-off when applying the patch.

Understood.

> If you could fix it, then add my review tag.
> 
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> 
> Thanks,
> Quentin

Done. Please see v4.


