X-GM-THRID: 6800728295088324608
X-Received: by 2002:a37:5c9:: with SMTP id 192mr8483538qkf.103.1583417946708;
        Thu, 05 Mar 2020 06:19:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:2196:: with SMTP id g22ls299207qka.7.gmail; Thu, 05
 Mar 2020 06:19:05 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsg0pSmDgazXrzjj4o63E48V7+8gIwLf7UIrga3qtZE6rIZ1cLeX2v4Vme4Hl52ngO2inTU
X-Received: by 2002:a05:620a:39a:: with SMTP id q26mr8554900qkm.475.1583417945105;
        Thu, 05 Mar 2020 06:19:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583417945; cv=none;
        d=google.com; s=arc-20160816;
        b=YJbm9MGAOHIXEygJshaTYcDcWoSsmZ4lH1pZLT52aQZo7rYcFCGWB+1Esr2GquJbFl
         lx3TNHU0sQzfzWE6WWjzPE1G9yu7OHwTyTu1Y0f3AzWj6r+qfDO4nxvbnQaG6qSrkGm/
         44kQ0qsb1XgExa+0zIRgfEYYLiGVY9hDW96LOhWDEHVIat3+DMCKbchkSur1/Wmbti/6
         nX/SXEBPbw46UJZXkzDcxqLRX0alx6vxioVmUxBJHi62w8XsL+7Jatrm5ra2fXmpn2a+
         LgFPbKImJ65PTPE4cp1JG/cH5IjGAnoplfCSBYM6k4QPlQgWiF/JpOuJVaePjcshaIEX
         3NCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :date:from:dkim-signature;
        bh=dfdwJs2n/9A6YjGIGR9ku5x2r2b/s5lCOH5EI7cMQDA=;
        b=gl9kMBDbaysLype89ZFdMBRqKI2sfTV3CfnzU0Tta2C/x3Kz9zMkN4OJfgn/57bivQ
         NDkHmQlSx/IWq/gEuw4g/22IJqDtxUi6ioMfpGUUpmqk9l9Aj3izzjKXOmmFwmBYgjH+
         Cx5Aihbw5C1YY7uA/RDlMO8tYXpKTd+a8GDCKujG4WMiP9YHDuBI26bzX14E9e8BDrXJ
         AUCLueNhrSPgZibUt//aJ9EcjZLc0jRVILaKhA+6UZxRARZGsN6pjYMka7WOYPzb++Xk
         FIe1+qHuYGGdR3qzz35D9nz2I4TzWWKzX8lSlEV8k5pipLfREZ5jhtn28UczFmGBl5O7
         //+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=HAMNZyl6;
       spf=neutral (google.com: 2607:f8b0:4864:20::62c is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id e26si368592qka.2.2020.03.05.06.19.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 06:19:04 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::62c is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=HAMNZyl6;
       spf=neutral (google.com: 2607:f8b0:4864:20::62c is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x62c.google.com with SMTP id j20so2297358pll.6
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2020 06:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dfdwJs2n/9A6YjGIGR9ku5x2r2b/s5lCOH5EI7cMQDA=;
        b=HAMNZyl65H9qT92FUJQAaPr1VSnBMjP+izmVQ/W5FV+VRu9thS9PRMid6vy9MStgPi
         cGrT4GDzjZJWi3FjHTfrBjJE5eEXii6zocN9d2R3yGSGUyJ2U40IUHLirKEn/NYl/ciZ
         1mJEvJtjnhNaVSHszUqlcjH6yFLjY0RqhDxfbDzEwjeNGEZqeyfzPBc9QSiUnWdLnFVk
         rD6gffcnqSZfyeXaYlUpRNyzu4k9WtEwKWv1Fj91wCx2vGsJrlTeECT+wYbJOTzMexca
         IHSKHn/MjmkelgidryVoA+DkSh6q0s9A24oLBmiyawkBD9NAiRGaBm/THBdnYpxNfCvC
         Pz9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dfdwJs2n/9A6YjGIGR9ku5x2r2b/s5lCOH5EI7cMQDA=;
        b=lVh/PhEUEh1KZc5sTSHU6znQzwxo9i9n/Vd7qkMQs1rrkqXBShJTqSe8kkKEoLc5Q4
         AQcM3izZMXTsovSlJxUnqx1NsTl7dz6IyuS46nvK19rMi+0XFgG4rWESxVphzp2aD9IA
         ful3/XGsn3/BoEtfKd1lfEE7pCeNQO8SQrPm/rfGbWnxCB3pTTas+Hz4tcm0s+qkhihg
         HvRatt2E5excaOSd0JyRFngin/jBdKQGAwtWksTDPATAMLtTjvz64ET2RXQKEmlLky+A
         J+/x4W50KQMwClsoDFZtMP8hh8KiXoddyNmzXKNuc/fbG1hIOaCAoejwLzYOTHxdx0bO
         K2og==
X-Gm-Message-State: ANhLgQ1d8xflU4ownxx9xFaCeIwylc/JMl6MEsT7rjKmhN+00X+KkjgK
	B73aadlih/lQLVHlWDhWM4Tav7zijEYrUA==
X-Received: by 2002:a17:902:bd90:: with SMTP id q16mr8404825pls.109.1583417943076;
        Thu, 05 Mar 2020 06:19:03 -0800 (PST)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.171])
        by smtp.gmail.com with ESMTPSA id c201sm14403496pfb.131.2020.03.05.06.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Mar 2020 06:19:02 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 5 Mar 2020 19:48:57 +0530
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] KaairaGupta
Message-ID: <20200305141857.GA16364@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Please grant me edit privileges for KernelNewbies.

Thanks and Regards,
Kaaira Gupta

