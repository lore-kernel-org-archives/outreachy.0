X-GM-THRID: 6802341212191719424
X-Received: by 2002:ad4:56e5:: with SMTP id cr5mr10472733qvb.239.1583793482905;
        Mon, 09 Mar 2020 15:38:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls105168qtm.8.gmail; Mon, 09 Mar
 2020 15:38:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuisOKjVyFbNSRlvcyt9tzNJ83OCrNpRKdHJQmr+jabxYCFNHPwIfFtndwzbXDWAkOWoyWy
X-Received: by 2002:ac8:5509:: with SMTP id j9mr6670301qtq.365.1583793481553;
        Mon, 09 Mar 2020 15:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583793481; cv=none;
        d=google.com; s=arc-20160816;
        b=uvE21kfwJLb+O3X+q42j4bu8L91sQxGSRHZtL9k+aoH8aPZLuRFFm/43X/1DBnzB2r
         ud67yTDB2W9m1J7ivzszUSGosNZkIeih9/qGtK0i7pituwGbjUYROjGElCTtM3PR01Xw
         lOcNLDdeOeA7mH9rFJf8hs8vZhHH5dmCH9HB8E+Qi5UxEOhVNcQ/qg2hF54vlRIZLq3+
         LtDHTX06MX/QP9Z+1PVIIt4rGIUhZ0amEEWrQjY7cPZbH6xGCnUrh6vwTRQ1LV/C++ST
         XRYo2ucCfQHud4Xx/ooc6amo8kqCrQ5kmCRK26nQbeBVh+vUiCKNvuFBzyI9G0E3gUiN
         RorQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=PhU2kL9PfPi833zYrTXI5Jxy7ffYwDWEtQEGPsY/IhY=;
        b=oqtH/CWznbbWUESgb3TCSR08cn5Tadx3t1w8k35myoCe5szHjU0AQXOtudw1usHfLw
         FXZpIKpa+XBXJAE90qCssc+9AW4btCorP9QlGHrqzS73RJHO3BneBFpFWG4jmoglO1lb
         inhPrfiYNtlmv3KsDEyCnUN65D0IqSZ7lPQDK63u7s3OqFt2CrabpTWPUjkwG6z51jsu
         qc2aOi0QMICEKlWu4kgw6B7UTnm4lkV+VlLUY3El5NOdDvJP6SdcT3lfHwiohvt124j0
         KS7zBLpa4Ez0t4+jSIFeKwunCY3/wlZ8Uz9q7MDuNliy9nKH80ZUzhFViUiOdpTSJY+Y
         /w8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=XSJxeRiF;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m18si269272qtn.5.2020.03.09.15.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 15:37:59 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=XSJxeRiF;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id g12so4596745plo.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 15:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PhU2kL9PfPi833zYrTXI5Jxy7ffYwDWEtQEGPsY/IhY=;
        b=XSJxeRiFNLnx/wKnjSmw3vSz5Hc3HQ9jEpCMrhcNyqmcInoNisIvsW7Pay995WvjbI
         Vs58WVzaz8SEXVmwFAStyHk8hNza4jWqmqSKIgdr4nTJ+r5AKnr9BKzt/I85qtIeUO/g
         B164/jrXaSUi4fDpHHQvdpDQK1+yX1CXDQXWcHhSuvzfRAQ7vma+mkLeA2ll0H/sLtSC
         UcMZLNOtam+vKK05QdZVKtI4fOXoGI13nCBZCkJvq/m+sBYUNsE2YqIxVax9l6+LKvTa
         8uXhT1IlyplwE+H67edYnF4J/STDF+EHfhAPl0EfBi08oMe5fSXNNmh755fBVmWawbKI
         UzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PhU2kL9PfPi833zYrTXI5Jxy7ffYwDWEtQEGPsY/IhY=;
        b=kku0A5PBowLfn7vkv/KBp+QDO5lbtEld1TML1U9YET8d4yblFYzDvvtCmcNkVXOhEi
         Ptw81jVVnjd0CP/ZIlpX77J8agPfDo3ObCLlCoQj6fs0E9Mm/wyCuJ+UqtUMKuG0CdKs
         OA006Np77oZ2wEMNGOR4eerpSpohFsHlSLRvNg2wrQ2avQLPeuryOTZcw7hovjy+eWCi
         qemJ61YXhFr5sMoc5pR0iHjtFdAc1D0488BRy4k9a96jqCFfUpuNeu0IJxef9Q15LeXa
         4PpNb6H2JZ9+D85fnSmjaMdhJ6TOqY95dZQy4qLYUDdDdgGw+FFpq8bewWVKEVoKFjHg
         UgVQ==
X-Gm-Message-State: ANhLgQ2A+LMRWV8BohXk1FAYN8F4J4OQhha6caxqgaSDtN+E3Rq6+M4k
	Aflmki7rlWP6Mh+Nl0Dnisj6Tw==
X-Received: by 2002:a17:902:8303:: with SMTP id bd3mr949446plb.171.1583793478709;
        Mon, 09 Mar 2020 15:37:58 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id w76sm28511791pfc.154.2020.03.09.15.37.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 15:37:58 -0700 (PDT)
Date: Tue, 10 Mar 2020 04:07:51 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: wfx: change 1 to bool
Message-ID: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

policies[i].uploaded is a bool. It is equated to 1. Change it to bool.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 815fde0913f5..ef617347abad 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -227,7 +227,7 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
 				break;
 		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
-			policies[i].uploaded = 1;
+			policies[i].uploaded = true;
 			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
 			spin_unlock_bh(&wvif->tx_policy_cache.lock);
 			hif_set_tx_rate_retry_policy(wvif, i, tmp_rates);
-- 
2.17.1


