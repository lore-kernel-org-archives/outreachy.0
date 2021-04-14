X-GM-THRID: 6950478192224239616
X-Received: by 2002:a05:6830:2083:: with SMTP id y3mr25026525otq.73.1618397892697;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:638a:: with SMTP id w10ls467405otk.6.gmail; Wed, 14 Apr
 2021 03:58:12 -0700 (PDT)
X-Received: by 2002:a05:6830:2117:: with SMTP id i23mr10836652otc.331.1618397892051;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
Received: by 2002:a05:6808:99b:b029:15a:18a2:2609 with SMTP id a27-20020a056808099bb029015a18a22609msoic;
        Wed, 14 Apr 2021 00:22:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw37kG7ojxl8NeNw3HbFnzRwMzrh8M4q+4rt4rnRCmjB5SP/jF8KKfl5+9HXKQVC1k8VpT4
X-Received: by 2002:a92:ce0e:: with SMTP id b14mr6550468ilo.283.1618384922514;
        Wed, 14 Apr 2021 00:22:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618384922; cv=none;
        d=google.com; s=arc-20160816;
        b=xmjA7sMyJHAP2mghOrIx34AI6q7NUnQMILYHCDBq/5kVKaZiwjG6F6X3IPLcWZX3qf
         QDKP6NSsi4TPEAfp4S04rGwcT0LxR/0V6XfZ+Nepl0PYloZifXpwZkg8Js0nn8zmOZbD
         j6vasWLNg24tQkSqlKa3yKrYsmVTq35WkcViw76aQkfCFdjqjaAdIggOeuEut4LkhwcU
         v+v8FuSDrAKAdgYoT9U51Q91sYLhPGzdvjMbD61bxo8KTm4QZBZ7UoxeDjAd4IMzI4os
         aw0t6QRDC0QlNuEmFWmT2GUQpYrp9PjoPna+xf4xcChiweUMN/gEJ3l466VvhxXkDE+o
         dnJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fOZOvYrVPIcZPO2R1dW7gEMhF5gXoGLf+TJd7DF8ljo=;
        b=mUNc6A2tFkkytXcHD1gjZI7STJH9TI0Gv7GWjU40hudbM2Adq0Kb7pfdD9qpsKy5t2
         hSQYVz8CqGPDOeMZOZpG7zGST4hloOt+DZRqH0VE+Nw1Ejz+3mXEP8dzn/bsxPdvls3L
         px2mQ/uWD18g6HdSh0wCM6fNVueMl75I5VhVbNcZEBJ8CkUwvhdc2iSelNf5WVMfjgxR
         PBh5nUnhobshoAB/ajkmRvF0T2tXlzAAFOaEcp3wwSns37NDPB50K1xxSBdlMflccx1o
         0mbYg+aIA7ONJukmnXtO6RbedeHuaTQrEK3cyh8fvSZiyUyVJOdh+shQNMWwtgFl1zvB
         uDSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HRQJdPkh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id y8si1108172iom.1.2021.04.14.00.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 00:22:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HRQJdPkh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id m18so7385023plc.13
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 00:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fOZOvYrVPIcZPO2R1dW7gEMhF5gXoGLf+TJd7DF8ljo=;
        b=HRQJdPkhGjqRsB6YI0Jwx0K/h2FghIaw9XUDYBGZiew7aqo8R0m2+CwOrjpTpGgFMC
         S/srO2NNCgixWWUO7YixYFcQlf8oiduiBGx4n8LkDFwuL3+T/gTK3l8tijP8zio6TU7Y
         5uw1v3/yBHIqq1kKWXQMPkJA7SNKMboqbJ3tmcI7HCqi0InZB2ogDCb+4zJbrkZJU87h
         fUpoUQS8oWRB3DGalomq71SCS1uuBPudoMBaF71LbnDOne8pTYA6w9D0D+jekRTwZWUp
         f5m4MGhcXrGMqrLdjZ61cCpOGB/T7eTn8NLa0YGNPpucf6sUPhh0AnPQS9R65OU7xlcJ
         sOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fOZOvYrVPIcZPO2R1dW7gEMhF5gXoGLf+TJd7DF8ljo=;
        b=cu9+gz7friRO9ChI5eEZcHlX96ZRNmLtUrPdTxfUbaG9eHAQXKkZXWhwkHFZ+w5H+E
         I8BnzYMtveUsDfPTtcD3mkK57nocMpekKvq36iKHpizT5BZJpSKoHgezLO33Q47QfmEG
         LHATsqViVXiT1sYc/As/4lT8h/bH3NkRbCB7k4t3ipLLhz+rVT+1t3C0kyQCiyIeFhbl
         hPASEENu5e9OVlLsq9pYtuwu7CNglQAuCxjiL/uCDOm5tbcwnNeAU3/jNHp5kiUcDkGl
         jRr0sWRqxyirc1BfIIxh4NgDyWe6nXLu/XnQHoO9Cv8dwCU/KzTMJ+oNFoxI+Yt1ShLg
         4inw==
X-Gm-Message-State: AOAM530rsKYq15jNyVWqMMDsUWR8C5sCM1s4XgeTOC4OWczFRwltD0Zl
	iZRDeshiZ8YqNZtcsK9NTXk=
X-Received: by 2002:a17:902:6bcc:b029:ea:f58f:274c with SMTP id m12-20020a1709026bccb02900eaf58f274cmr15518935plt.68.1618384921966;
        Wed, 14 Apr 2021 00:22:01 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id u1sm16135423pgg.11.2021.04.14.00.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 00:22:01 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:51:55 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v6 1/2] staging: rtl8192e: remove parentheses around boolean
 expression
Message-ID: <60483f646c16ffd3c19ca8f508a1f1c3a0a13db6.1618383684.git.mitaliborkar810@gmail.com>
References: <cover.1618383684.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618383684.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' boolean expression as '!'
has higher precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v5:- No changes.
Changes from v4:- No changes.
Changes from v3:- No changes.
Changes from v2:- Modified subject description. Changes has been made in
v3.
Changes from v1:- Removed unnecessary parentheses around boolean
expression. Changes has been made in v2.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


