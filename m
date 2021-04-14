X-GM-THRID: 6951014461488496640
X-Received: by 2002:a63:5626:: with SMTP id k38mr39685984pgb.128.1618409171289;
        Wed, 14 Apr 2021 07:06:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls1375360pjq.3.gmail; Wed, 14
 Apr 2021 07:06:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJweTMhqeeyvTzosmqJv7yBu+/Eg1y4TBfoOOU8MvLZBNXa1E8EwqukTIPeqVL9iyBuovinP
X-Received: by 2002:a17:90b:4a04:: with SMTP id kk4mr4048813pjb.68.1618409169926;
        Wed, 14 Apr 2021 07:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618409169; cv=none;
        d=google.com; s=arc-20160816;
        b=acEGC5/krqMm3IhF2HPbxXSHf254AR4koL1YR+dqrJcVf+c3GGZTy4LQNmlg/0Dmj/
         9AdN/w/GcQTE5/IjOuPQ1Ov1yDF7gNBn2zOJKX7vXkth5Ptc+GFWYE0P0SL2jOzy/bb3
         iMbzZL9BNpFosrjG5Q0fw0UvXmjZnEV3A+7TkveUIUqVUCipWmca7xgbTXGOEdIqyxnJ
         ZZ6qU5t3azA5/kNpp7ZO551TTh6r81/NNbaXqyBDvF2DyU/UsIR3br+TMddU1MFA8/Lu
         ZNRK+VkET1rEJXL8QUiCbp3s9DqZI1t/RZ/6AnAeU2MCqY9eK5qCdDtawP1F/qYfkh+m
         GknQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=24C4YPPmvpQq0WpQR0fbdbp9ZiV7j5vDcMjzvvE1mNk=;
        b=OdLHLhlHH/kMWWL7IGuBJXydNp4AKH47ZwXxGiWOlyELECM0bXTFZKWYq+6SqiNSjq
         AoM28uuu9H2LWy9qYH4RQKlO6BY5a+2riupV6m8kyEe/byrDtYFC/mKTaQS0HEPYaYeC
         ihXEZnDN3uuFgMgm4+re3/mg5QTz7htFD/rSqBwtjZnI0JKxqeLoyk0nuVcWJHflon4Y
         svP+CPXwFE8xRMxJ7iUyWva3c/4B21rV84fZk85b43uQC56dUGtIAUAdgFcG9za31blZ
         VZ9UtQpfiMz3e+lHrABGJUdEBDgM7imKoEWRR7OVm37nxcSBaaZzr4yFQJ7dyjYWLzMg
         fTFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uBrTXX9Z;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id u21si1263191pfc.0.2021.04.14.07.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uBrTXX9Z;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72a.google.com with SMTP id d15so8495761qkc.9
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 07:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=24C4YPPmvpQq0WpQR0fbdbp9ZiV7j5vDcMjzvvE1mNk=;
        b=uBrTXX9Zjwe3GGx4+r+nd5zq18AbmlA/vprUL1ffl6e5521M0Khm/LR9QaX+SQdOop
         IE00povsaMQW7lrQKqzg32f1hno2HBrxx1hijK+5dl46EwqMBNJg4ckqw9W7V9HRIHCA
         fsJIuoFvSrqBVoXsubEVIc5d+8IMGJG3vNENDPpjjFkT1YcuHYYy3EInYyczsOsT8o7F
         ngqET7waO9GGkZNpkAS/I6TwjOL4kKb4/EC9+p0kI41mvqabdR5kspUivquVMRaX4Ezd
         UalhTACn0GTdU5/mKk+a/wHJTZqhPzb6vtQPAP3R2VJESiKskPwi+L0PetpIK9OFajW/
         o4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=24C4YPPmvpQq0WpQR0fbdbp9ZiV7j5vDcMjzvvE1mNk=;
        b=GV4fKXmwhQCU30c/5ZSu4WvrPrnYIL2yY/YzQvNm+X5Z00l2RgryJ98en+zp8K34Yf
         eOSlAA1Z7BObWrOvgt2NBIIQykynCOW/MSDnwMhKSIlhZV84hW85IhCrahlGGtjMq+Pg
         E9jGaOpMUhQLNgNcffR+u2WraKoLLZKVucvxtW2ypAlz+hgQRpH7fRtbYW4Orm4F/Zss
         emCwP58EweoG+WOc2mxPMOJDLvxrVeoFk28oTaeCiY80shzuCk8o/CY8urYzhHT8/Pvg
         aZ/EVCBUOwnvzIYtyxV1mEVOMcrOiuHHkAYAX/LFG+7WKEkWt6lPKIE7SeVpnbDL+rz4
         /MrA==
X-Gm-Message-State: AOAM532MJfIV/HqmA2gP4O3nUePbDjddK84kJ3vBOn6BVYK9Z42nph6K
	Xq0Lu81N9okYh1pIszbXT6m4NEoIdZ1iY2SB
X-Received: by 2002:a37:611:: with SMTP id 17mr22627564qkg.206.1618409169418;
        Wed, 14 Apr 2021 07:06:09 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id l16sm7420069qtr.65.2021.04.14.07.06.08
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 07:06:09 -0700 (PDT)
Date: Wed, 14 Apr 2021 11:06:06 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: atomisp: pci: Correct identation in
 block of conditional statements in file atomisp_acc.c
Message-ID: <dd0b898b26f1bcc6563b7ed33670c801c0d4988f.1618409028.git.alinesantanacordeiro@gmail.com>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Correct identation in block of conditional statements.
The conditional statement depends on the results of the
macro function "list_for_each_entry()".

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_acc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index f638d0b..5e5faa4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -77,8 +77,8 @@ acc_get_fw(struct atomisp_sub_device *asd, unsigned int handle)
 	struct atomisp_acc_fw *acc_fw;
 
 	list_for_each_entry(acc_fw, &asd->acc.fw, list)
-	if (acc_fw->handle == handle)
-		return acc_fw;
+		if (acc_fw->handle == handle)
+			return acc_fw;
 
 	return NULL;
 }
-- 
2.7.4


