X-GM-THRID: 6524357100246663168
X-Received: by 10.80.134.135 with SMTP id r7mr4534288eda.1.1519070263488;
        Mon, 19 Feb 2018 11:57:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls4534970edc.0.gmail; Mon, 19 Feb
 2018 11:57:41 -0800 (PST)
X-Google-Smtp-Source: AH8x224tS30u8hOkBHkvCHUtcduQEdJ4yHun1ipOe+0UclSFD3ZKtUio+c/a6pQK5SHUVRLQJY9+
X-Received: by 10.80.202.11 with SMTP id d11mr4582187edi.9.1519070261893;
        Mon, 19 Feb 2018 11:57:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519070261; cv=none;
        d=google.com; s=arc-20160816;
        b=vdfZNl/oHSDmMsVTGLM4UwQO48c5/eM2fy7KzPslgzcnuIPFMGoM8+R882l0ETZajX
         JiWrAlZejAN4KLj2NtsikRrrTI4OuOt+Dz1HuUq9yqAdxSncAJ8/ycccJQLG5ThDhqjT
         5nDzuua49v6f1sqadGofrjfXQcmF72HZ9KunBtkhroK/j8Y6EzahMgsDTb2T1B4Be/sq
         k2F4QzvZYcLIllA2ujODFarSDb+WLGep1Td+RJN/SZkvyYa7qp59YJWwgazdmm0MyzP9
         BAWyNC1fswgfPHx7dIOyeVaOcGSltIbKamNJBDg3JT3Q+iOuDX9bZcpMny7FX5j0JH4l
         t+DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=CzP9Q95eTXLJTxokQGqsf3/USBCwp+huOF3cVwVy0fs=;
        b=SYQxJaf0SGjCngaNHnPQj1LOm41QMM3rhr3aJMKe6bdA3Jw9ljB/mY7bN/3klLvlSp
         87qYlJTjwl8vCgFR+GWzNbof3L8KlmVdSPJ/qAHukhVXmZBIz2dg32LRH+NQwYJhsaCE
         hGQrh1ajEJHEaGeUejoWjElzwoe0hf5amRhj7povQFhxEZwE0PBPhJ9OdLgvYgsOYcen
         ntzXMSYWfwOwFWRzTUbhEQWsF0JgLAXSEAY/IFbJ7krE4YhcrbnFe/czWHTEz9YcdIGt
         H57n2Oj6kFBNWzUYaR7kWNXT3xVtRYw+WgAD+0h9kXbNNi+beIyjHqCEYGoZNn8m23Zc
         nd9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cB0ED0Cz;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id z1si837649edh.3.2018.02.19.11.57.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:57:41 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cB0ED0Cz;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id s5so10865554wra.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 11:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CzP9Q95eTXLJTxokQGqsf3/USBCwp+huOF3cVwVy0fs=;
        b=cB0ED0Czkr0Q7ZAhtx267gDd4G7kJ9dJabj4DdqlRU30BsvqZQhCOoTp3EWEYciPlc
         e9Yr1+HNvyjIkro6viyWvJ7fIzO78zoE7+RlaZs7v5cDW3PV+zAbViHh1vWF81u+MMLk
         5qzOb6OpluICKuZJqgEFg0UlO3uvuNxdsQd84avj+vlCGhI/Gs+e6TV4bSbSVXDao34W
         0ZohHnFrKuIy41K+n1vWBoWHv2cePkIPlKOhuf4vmD03X9OVYFVZzWR2yOXM04wQ0U+d
         Xtu92UQhDeGYKHvAI8MsNoaQFux2rEzlw24YufZX4Clog+XxfXMeQ5WzF7589sdEclb4
         tHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CzP9Q95eTXLJTxokQGqsf3/USBCwp+huOF3cVwVy0fs=;
        b=Mm288BpJYxLG2IuRzgFAPtB1BDX0sbX6RaO0yQ5f5g/dDgV9fihlTzoAhfJSHQjZT7
         MSlUXtqGwYMXU3OgddonKiJMlqURY1FTRHlW/qCHXZM/Q7ykW0tnDJwDnNEUfy8/KEKj
         Ohvf6oa5jXKHF1qgP1Oz8UYtrOU/9mrDeoqRrEJrXIlpv3tqtGuhAXPIfD4AjgophP+w
         luzFX0pjn4C4pKy26Kfz7OfbKnrBjTAwHfoNjR4FVHXJ8Wi5vbz3ALRtz1XCqNhcWVpg
         dB+8Xah5V08LIgc9qoCtCLZQg9905mi5zbVfmQmXwPI5UJkZBLUedvWhzoNPA3nRYAns
         DNMg==
X-Gm-Message-State: APf1xPDjg+v2w6CypoaK8ay4DKahHv8Vnizc+psGE5DomkUYRjody4U1
	wXOERucaD0G4q4qIEGQ2xggU7j6H
X-Received: by 10.223.197.12 with SMTP id q12mr15105395wrf.147.1519070261547;
        Mon, 19 Feb 2018 11:57:41 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([141.226.120.42])
        by smtp.gmail.com with ESMTPSA id v8sm10815396wmh.25.2018.02.19.11.57.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:57:41 -0800 (PST)
Date: Mon, 19 Feb 2018 21:57:37 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: use memdup_user to allocate memory and copy
 from user
Message-ID: <20180219195734.GA24671@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace a call to kmalloc and a call to copy_from_user with a
call to memdup_user to simplify the code.
Issue found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conctl.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conctl.c b/drivers/staging/lustre/lnet/selftest/conctl.c
index 34ba440..3c919a5 100644
--- a/drivers/staging/lustre/lnet/selftest/conctl.c
+++ b/drivers/staging/lustre/lnet/selftest/conctl.c
@@ -648,12 +648,10 @@ static int lst_test_add_ioctl(struct lstio_test_args *args)
 		return -EINVAL;
 
 	if (args->lstio_tes_param) {
-		param = kmalloc(args->lstio_tes_param_len, GFP_KERNEL);
-		if (!param)
-			goto out;
-		if (copy_from_user(param, args->lstio_tes_param,
-				   args->lstio_tes_param_len)) {
-			rc = -EFAULT;
+		param = memdup_user(args->lstio_tes_param,
+				    args->lstio_tes_param_len);
+		if (IS_ERR(param)) {
+			rc = PTR_ERR(param);
 			goto out;
 		}
 	}
-- 
2.7.4


