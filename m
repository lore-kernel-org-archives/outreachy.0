X-GM-THRID: 6666119040327483392
X-Received: by 2002:a5d:914f:: with SMTP id y15mr11908255ioq.18.1552076798546;
        Fri, 08 Mar 2019 12:26:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dd3:: with SMTP id b202ls3196281itc.0.gmail; Fri, 08
 Mar 2019 12:26:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqyfBPSTgedlTE85AhLmRiZuFZwSWZiSfO7SGCPYkfMElhXTSHoRVEsOmt6eqJuUOx4+PZA/
X-Received: by 2002:a24:94c6:: with SMTP id j189mr13427142ite.18.1552076797604;
        Fri, 08 Mar 2019 12:26:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076797; cv=none;
        d=google.com; s=arc-20160816;
        b=okQU84LgtZefmO8Wxf3ddM+j9hJ8Gr/xpL+cXl+9ab531H6J9ldh0OGLEoT4kCjvza
         mP/d6Aljt6hiHLAWUfHhQIOWHNsnqneeZ2dXvrc12caj6wtiFnK5GsXzAEMqaR0ZNHN6
         joN0hj8KeUuO53GzckEg9f12tpj6umAs8UwLwrFd5Ah816adM/hhs2kRKpLm2ZHTqhrJ
         +f434NGqKe8KZJnALdgSuW+LvCprAIfLxiIwVd8GZ5AkeywmFJHvtT295TXORsL7DgKA
         mgwjnm98Six10HRrhfs9PQypHyL7HUawFgfYP1HrfWBDHOLAEFYFQgt3ZA4orCpzSDWD
         VVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QUD00eEJHFFl5Ln+eiekKW0jp81ULHThDXoQk3kzpcw=;
        b=Wzk1MDM7m/iAAh2EFCxcjy5Uf5BQkg1L1IaDKMNr9MVgP6Hqd2bzCoYBbdybo/kHNI
         PKisf6f7XFKV/vn73WWU5xKptEo0/aJ6MRaMxkdtjjuMY/cip5JvFcad8e3zkMafD/l3
         fH05I4PuaJS/2k3R7TUnhAjM28rEQVGum7VPUcVpix85Uo85exhGBB3qk/UYMAbsLl2E
         aJW7CmtHwfiCGiU/zA7MKersS5hd39kpT56XxiR+C5QcYEo81+QzIyPm2Q/m+5ByxU2U
         wFMYh9BGJHNeWKxTwDz0rXFZiWe0/BLT0VTEo5V9PUBrnCvQyKDc+GywE46LPoN1ZCDj
         MGjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qnQPsh9F;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic308-20.consmr.mail.sg3.yahoo.com (sonic308-20.consmr.mail.sg3.yahoo.com. [106.10.241.210])
        by gmr-mx.google.com with ESMTPS id j6si740547itb.0.2019.03.08.12.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:26:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) client-ip=106.10.241.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qnQPsh9F;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552076794; bh=QUD00eEJHFFl5Ln+eiekKW0jp81ULHThDXoQk3kzpcw=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=qnQPsh9FEU3tYQR71OqlrJKI9D7KE+HbbJJ9ulTYrYh6gs8rjEWhUNM61zadUvk2RrEtphRa+JbmeTKJOmMmPKPPki6GPkBoparA8eZE2HjXD313O/HA6YC/DieI69aqTaLqIqIe0WGIBnUrizxJmlAcP12Od9UmJBjQGEKpkfaSLsarwMudHR1DcqIg7QKX8DNuEVj7gt3x6NIUFNzuagE925li0EYByv4SvpidzLQc4TXfFCNNX45d/O6mRdWRaxh3dy6fNy18qAUxW9bwClTkxilJFd+NEF8teqmM2W1tYeOiwnrcbTYwDmAnUfswpO17wZQQ5F1kpZtEH9Zh8g==
X-YMail-OSG: HNZvs88VM1lAfxF7d2oTESx9IDHhBXfNCCQ58tTpg3C5M4FDGTongbEpT7sYSIg
 GDYefBloyoNzF0V0IHZNF4FdFCzX4Po6EFAZqeb0EzEVPBv7LN_xJfhdeaG2eWGXJx2udMlVY5It
 6Nzw.CZfNWLGYOzfKCvzQfRs.NeZIDluWynRfkQdJGA4Oxl.4sr_Pd_iOC3hGzC.MpWhEIeAmwsz
 nuEkl5eVKqntAO6gQ2hlOADJrpQEyYSZTFXlmuN__YP__Jsm0bE9qp8x76mnyBYYB7Smz1x5c4Iw
 ZYrat..RP4xrhWkqquzqtY3S3W15HLGJSkeaVc8_rz.W8zM6OBMZL2Jg9UfVeM_S5lnVCRHgJovK
 xvJ4BR6EMYXvuyAWn3pqb9UIT7hRRj0qBGhI6snwu0woXS_IKELAN9uybyYU5KG2Wk3jyEM40pDv
 n754H0TOI3LU1BeVJqA0usldyWBx.VBpKATBOvPZHa96.hAm5E_rMYMCvBqLU7fe66CGjySo7A_N
 QViMyljk99eNNRMD7QgU46UW91Hq53Xj8WswJMGuGKD1FjBPkVTU2lAtjPPEdj4mdmXkIExYHDlY
 fDjBywyIK_lNbRZ5lzALPVQsBOlTtEEUaR1UP2VGjmjTN9uzWYiokNe9sVI0hiK7_BsqteicipYj
 w0HVTTevLwoTTeTYinLV3msMN0FWDYVq7ZQg2d3q0.G1uh328fdoaQntHf.ZwLI4.G6cAQFNjnE2
 JUIjK2uabhiwliw3.uOdwjqTlbNEog67NApKYIA9P6scQdImIsYzj.HR5k4F0ow_AYrk.hd2eLAy
 c1TojaCwsudVRb5evs92gueXxdxrij3e93KVXPbQbCOvCkgIUe.U8IpzVUpZRVu3_dCiFZewtnhi
 JYbJ20sy1FF4sfjYuu_dIaMfRdA6VU7i_JTr6dLl8N7yw3V0TmjALePyla2QxN0OE1NZ79g_oAhW
 mnfoTjPYpaJDjZo6mk9nOIFtrdwSZv4XUNYQPf3Tie9_q_iRJz5KBbtFwaXt.ytupr3QZ0W5KJM5
 ZKfO8fwvBYa8dgeC_6_tvLQ2mWerBE6t2nWQtKiwYOmCDG9E5lcmsTlRCTB6w21.tS8Xvea2Lomh
 a36ZgNXv6W3wPVbZa5T24XMQ_GHeN
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.sg3.yahoo.com with HTTP; Fri, 8 Mar 2019 20:26:34 +0000
Received: from 47.15.233.237 (EHLO localhost.localdomain) ([47.15.233.237])
          by smtp432.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 97b59abc1276b5581cd8b807a2758e64;
          Fri, 08 Mar 2019 20:26:30 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/4] staging: sm750fb: Edit CamelCase Variable names
Date: Sat,  9 Mar 2019 01:56:03 +0530
Message-Id: <20190308202605.4061-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
References: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edit CamelCase variable names in function definition parameter to make
code more readable. Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/ddk750_chip.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index c72aac21b675..3e92b3297160 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -93,7 +93,7 @@ struct initchip_param {
 };
 
 enum logical_chip_type sm750_get_chip_type(void);
-void sm750_set_chip_type(unsigned short devId, u8 revId);
+void sm750_set_chip_type(unsigned short dev_id, u8 rev_id);
 unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
 unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
 unsigned int ddk750_get_vm_size(void);
-- 
2.19.1


