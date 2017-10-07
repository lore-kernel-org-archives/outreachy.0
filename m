X-GM-THRID: 6474142163405897728
X-Received: by 10.31.95.208 with SMTP id t199mr640242vkb.85.1507378687336;
        Sat, 07 Oct 2017 05:18:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.86.69 with SMTP id z5ls260115uaa.6.gmail; Sat, 07 Oct 2017
 05:18:06 -0700 (PDT)
X-Received: by 10.159.54.100 with SMTP id s33mr767923uad.99.1507378686411;
        Sat, 07 Oct 2017 05:18:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507378686; cv=none;
        d=google.com; s=arc-20160816;
        b=vf0BBooY9SRrpS1yyksEIDY6hbHAyx8LquNrQ2msGDFaBuo2kUnZdt54h/Msg2bJKq
         zdTgZsfEv6cgduDjQdw5I6TBVxgnkFUtJKi0/uvAklursNuRWQ72fCDJ2bkzw+fbkJRB
         yhV+GfalkWVAQ69umACptPZ3bDtyhVEZ21UjmNIKPwPJdBeUHweKtgX0bovT1MIFwqr2
         KYjGjyKob+J+WQrPgOE5cZL4KfVWs+69f7xmYeoLff5QvhLv2x77JszvDAbIVywlSbkk
         XID+EHZSvVT1WpnIp3XyMQWXhqkF388YXJUsonh8TMvXS6S6X6NIF5RWObUaviQROaV7
         XFRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature:arc-authentication-results;
        bh=kWVdA08krIVwcaQj+zR4GjWXCNJwpprNV+VxffRto34=;
        b=cXKiGfUv4e5wzWEeqlpbDb7buzP+Zxz6uE9jdDFJrObSg/AqHDipgopyE0d6K1sfoR
         r8OTkjYpP7zDWSn/C7+URBsirYv10+EibvRXqmsgojD197IjxlFf1o4Xhub1aD4i0vZq
         UH89AX7jGcDcZo/D7f/SSzHTOmx6vuAEnjtACRPW4TFek7T/Dkfx858Xj/w/VXqqhZHa
         Mq/kFSvOaLfVMRvnbXp03o+tvSN8ln2GznENDd5bR5tko1MF8iMUawJUDKNG5sf2io0J
         TJJeeEOIA5MADaw0lSxeb+Mz1UL7VazT9JuGKkThJP9/yKgaQmxutjEFejTx3mr7vXdd
         mxpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZIGlRXI;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id p68si187825vkp.7.2017.10.07.05.18.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 05:18:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZIGlRXI;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id l40so6538109uah.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 05:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=kWVdA08krIVwcaQj+zR4GjWXCNJwpprNV+VxffRto34=;
        b=JZIGlRXIgWQDsh/cnFPjlWS4qC4JBXLJW13B3/JJWFh2rKN+F0MPfD1qM/eh+1kErR
         93EywoebePTBQBcH8y1+p4yLOOZA6Bv4MNWL2ypXSeISdfOImSPxmCvgw1AFadaNDPhF
         ckbVt1ty+gzkAlrVPTud4Id103dZ+ELY2ufvIqR/uKiz7u9oMmDfxuX1ehkJ97Uh+89X
         U/6HDGL5k2n47sESfW9zZeoY8iYF39juuRjJs/q9nlZv0H5RNbaYl0IwpEk14/n5Ghkh
         vT+9nQ3NQIW7sVV8ZunRIRVh+tuzSC+rdlwxoIiKdkQAEVGmbH29YsyewrZjzRszJ2se
         VESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=kWVdA08krIVwcaQj+zR4GjWXCNJwpprNV+VxffRto34=;
        b=YhKzdPbaw2pjwkg9oEVQuD72ZdreiLQZfSbzXZFybDLEBnJMfk9TcnOpupf1WryuSf
         tdSYG1eoYoHJZySQcCDWCYfBdnqauOafk9MMEkz158CaNBwg66wTl8HIL+W5sMyE9p85
         MvXL0V4rGT3X3g+vWSakiv8GM0kiKfd1EThku+FLolSBcDhJVFrFKFZGDF8S5ez6WN7j
         q56EDBLrvv6CMSlPK7ik7jYA3FHOP9YskYRycmm3jqQIjgB5Oz8Tx7nqLmjasRVozWTz
         AXobtoNfwCh997X17qpW8hPBFsyDoIoQycC/58Pl7/WCBBVxpf5HIFH+5ijgvA/Z8p7u
         UPFA==
X-Gm-Message-State: AMCzsaU71G0PG965l1ZSHB2vRByP7Cm37WutFcfCeOV0Ciq3T4kWsCmB
	zx8FOy/+Tih24w8oEHR8ht+NrHqEtUSJ2yw7Ctn7RQ==
X-Google-Smtp-Source: AOwi7QBQQtgA00F8qrbEOrP+OW1RCAaFD/wD102hfIUy7jVhi7SsYFueYJ9fI9KzsQ8Er1pTaVQJ685gz+GE3XOOLoI=
X-Received: by 10.176.4.71 with SMTP id 65mr2461140uav.82.1507378685933; Sat,
 07 Oct 2017 05:18:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sat, 7 Oct 2017 05:18:05 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 7 Oct 2017 17:48:05 +0530
Message-ID: <CAHXiS5_HmWS_7=uu0ZQUAXLoBd6h-n4HO-OJkd1u_vfB_1OaZg@mail.gmail.com>
Subject: Need more info for this task
To: outreachy-kernel@googlegroups.com, daniel@ffwll.ch, noralf@tronnes.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"spi helpers, probably best put into spi core/helper code. Thierry
said the spi maintainer is fast&reactive, so shouldn=E2=80=99t be a big
issue."

Can you explain a bit more about what needs to be done?

