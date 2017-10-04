X-GM-THRID: 6472991965630693376
X-Received: by 10.99.61.12 with SMTP id k12mr1898038pga.160.1507110885788;
        Wed, 04 Oct 2017 02:54:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.167.11 with SMTP id d11ls4287501pgf.13.gmail; Wed, 04 Oct
 2017 02:54:44 -0700 (PDT)
X-Received: by 10.101.83.73 with SMTP id w9mr1423673pgr.99.1507110884567;
        Wed, 04 Oct 2017 02:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507110884; cv=none;
        d=google.com; s=arc-20160816;
        b=V0l0CgIYNHIZjIV9iyDwQVdVLl3xUTBEidBInti+TBO6M6spDxiKACjuZE57y/101W
         59CfxlqT9QzPF/pl4TxDyEDnOjWI/D+qqW74vNArZrPJNbD/b0OmdCYHRfodi1PykGcK
         4KUdmudKozi0uNtMxmckYyCOei5ky3WSjnlPuzZ0ku3L/4HiIpVb9JXLo/cLb6lFVg25
         OZRgWaTwcKY9LVenmoC7UPajz/151UIFnW2+abNIRF7HrbMPrnA7uXkaTEo+SXdM1jXR
         5MdJmaF8uHfnX+p3j0VkRrVykMzq5zGUR9kC+B72d7LkvfAkhKBt5mssAwzWjTfLCBAW
         JalA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:cc:to:from:subject
         :message-id:dkim-signature:arc-authentication-results;
        bh=voEG2Y5CnF0iMBvdhy5XvFXYIp6o/qlHWT+4tt0+hqU=;
        b=xFoqE3aw8wRZsc12j4qwdUTQamIZWhqeM8I2T87qx56xaRH98rJJImO6HMbE1p/Lfp
         mXyFD+Xe5ZPsQM7p1jWmvY0cizL6aC1jINnoAsBeV1UsdiPP6sypFa1Ku1zXaokgOtMU
         3AFj5g1wgMqWTb0cgkra1KW6+YYVXf2qdUZ2f1MEHKaLYliqKvsgDbKWVTHCI03e9C5z
         6XkHbgXU5BL69dHHQFnesOa4ZF3WPAlSZi/aFJz2t1ytFGnAp/96Nf/Ys0zQrkbiRj2n
         mOBfWWEgakCLCIOeFquKwfBy/cHxMFZjtmmU4ICeHN2nzeWLSW1QGThE55ViaDIQoB/o
         HBxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VKXU4SZd;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b6si1847310pfm.28.2017.10.04.02.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 02:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VKXU4SZd;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so11938985pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 02:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=voEG2Y5CnF0iMBvdhy5XvFXYIp6o/qlHWT+4tt0+hqU=;
        b=VKXU4SZdPzsLOceehc5d/yKsKyxxK47msF653TftH2gpMYffj/3v4aPNF7q0U1GY1+
         Q0V+YYye0ngcH4M4kHzchkN4rRlPdpuZwe44Il9g4M/RugNuNiOE42OYgyydQMO8obRm
         8bxd/NbJvcSX7bYAkCtqx4f++So5j5HML3NLeM6EKZ2W4/zh0z30JOltaOdOutGVSokv
         MrISmA/08aYg4NAzQcaNfbU3r36vVyO+YKscvraWqZB/3TVpx3+YaeDMsEOeX8D3I/gw
         qehuniM9J3tbLC/Fm2Sq3qGfYt3uCRQzFSPVwGwDdyhDdkW+AvOkQ8yy+s+CzOSSPEyW
         38VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=voEG2Y5CnF0iMBvdhy5XvFXYIp6o/qlHWT+4tt0+hqU=;
        b=BBAzftffdbYwsWBX+6hWoBRSgTzFNv3vnRzQnq0jsNhkO6xsKa4aS8Nt4b5hBpb2X0
         7UzoOGWuDUTdShoRDlYdNpp5BuCDmNlSg9vgwM1h6NN3Bp4cq9fBLubdLjleotcwkjRd
         y2WTso0iSFsbfkCzCa95114b2MC7lyeCVxi7IpTufpU9mAgYFroChamIVzOD4Fr4Hyo2
         qdnqhI3NEinui9EpN0Ub17db3Hvl5akk8PhYP/sGbS0eXQMCtwc8a+ba8+zL/YeaP1DX
         /OvliUxr4lZmGRx6h2IfEXvFf1WjmVavRLwqXKPojoPEf/yWKId19lge3lD3nl9NfLf+
         yOdw==
X-Gm-Message-State: AMCzsaW3ZezZEtR6i+nfp0egds/K2qQhXbcP7TquGDc/8e+9Vrnn6yk4
	uY+EK0nLbT6PJA91QwAChUQ=
X-Google-Smtp-Source: AOwi7QCXfuWrseWvR4ehFbAuv352p+hAUAG5lC17KKyGPSUXnMfCc1OSYAzzJsKjP5hZ6lWDSWTgyA==
X-Received: by 10.99.7.133 with SMTP id 127mr11015187pgh.147.1507110884342;
        Wed, 04 Oct 2017 02:54:44 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from [192.168.100.7] ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id f12sm1459705pga.7.2017.10.04.02.54.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 02:54:43 -0700 (PDT)
Message-ID: <1507110760.6328.16.camel@harryPotter>
Subject: nftables: Add support for unsupported codes in icmp and icmp6
 extensions
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com, harshasharmaiitr@gmail.com
Date: Wed, 04 Oct 2017 15:22:40 +0530
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

Hello,
I am trying to add support for unsupported codes in icmp and icmp6
extensions. Like in iptables, various icmp and icmp6 codes are defined
with their type, code_min and code_max but in nftables various icmp and
icmp6 codes are defined only with their type so codes for unreach,
redirect and time-exceeded are not supported as some of their type
values mismatches otherwise.
Can someone please guide me on what will be the best way to add support
for unreach, redirect and time-exceeded codes in icmp and icmp6
extensions in nftables.
Thanks for your time.

Regards,
Harsha Sharma


