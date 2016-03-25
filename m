X-GM-THRID: 6265914371751280640
X-Received: by 10.28.24.14 with SMTP id 14mr4106771wmy.1.1458896876828;
        Fri, 25 Mar 2016 02:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.10.2 with SMTP id 2ls329273lfk.50.gmail; Fri, 25 Mar 2016
 02:07:56 -0700 (PDT)
X-Received: by 10.25.91.73 with SMTP id p70mr1502753lfb.3.1458896876073;
        Fri, 25 Mar 2016 02:07:56 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lf0-x234.google.com (mail-lf0-x234.google.com. [2a00:1450:4010:c07::234])
        by gmr-mx.google.com with ESMTPS id ph10si457819lbb.0.2016.03.25.02.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 02:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) client-ip=2a00:1450:4010:c07::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x234.google.com with SMTP id q73so49190040lfe.2
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 02:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=kzKVumiLj6yhZeXmzbhWtqEw0hY8xnTNXQVmwKi2s8o=;
        b=drNxVUBosJZx14T4aSQKiSutw8UlpIbkFsCE604sPclSCnlI/GCf7uml73YCV3pPWt
         dBLRJ81LjFqG9v7oB38YnhcUQQuYhs99UwQo/gMn+ZcdZ7JvXBVmpr4CALBYZactZeqb
         ubbrdUcqYdU7B7XVR6+a9Fif7TGPfl8GylpN7KKmwsih9tJeNwLoffacZcZix8j6XBuH
         +mh/jcHmBdzqwOXQ455XeAP7CyonwPfLGNdzov1PN8Cq/BtuHNeVrDPjleY2GUknDdeI
         KKbhrrfrEC0bhwQOdai/KchAwjvA08usjAtHlRupw/eGwx1TBHp9C1MTe4+Ftl3pLbqf
         dlig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=kzKVumiLj6yhZeXmzbhWtqEw0hY8xnTNXQVmwKi2s8o=;
        b=ApyX2pO6ZSdfY7igghH6aw6ive5fmGP69w/fBtM5xBhAm3Kc2UZUbtHrxtGwa5J2Ap
         vcD/GNHIcrj+vrY+XqvSFgEgkQcS/sPsuGAfiqLkmM4iu+ClS8X7hq1TElbNMVlUx44Z
         cY7mwkZ2tuYbZdRNGSgcTieCz4p39VTIPI25uqSgE7iI4We615SPL6/KVw9V8O+QNUC5
         h/t8ItvWyxUG5Xlei64DWa2c2edyB0E1qjCy4bYjL7JdPV9SaPF6JDzHsYJ4fL19pMXw
         8QnJo3qfQISQKVXiE9sCMD3dFMVliE89JNWbFkd1k7UGGByYTr2rkve6WZYTCmVfKWzq
         Zcmw==
X-Gm-Message-State: AD7BkJLJh+a8X8GcCF0WkPdvFyjvkQ0u/ZNsC382NyeRZDRe3+5sqHcTBFrT9ZNsPlu+eQ==
X-Received: by 10.25.159.133 with SMTP id i127mr5282196lfe.33.1458896875956;
        Fri, 25 Mar 2016 02:07:55 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from [192.168.0.77] (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id s5sm1789373lbr.12.2016.03.25.02.07.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 25 Mar 2016 02:07:55 -0700 (PDT)
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Troubles doing Tutorial
Message-ID: <56F4FFE9.6030307@gmail.com>
Date: Fri, 25 Mar 2016 12:07:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello

While trail is hot, I'd like to report a couple of issues I faced when doing tutorial.

1. I found no email address of the mailing list, where to send patches to.  There was only the link to google groups. So, first I used web interface to post a patch, and it was wrong.  Julia then mailed the address to me.  Maybe the address should be mentioned in the tutorial explicitly?  (And OK, maybe  I'm lame in mailing lists, but the tutorial is for newbies after all:)

2. Submitting a patch using mutt went OK, but when I tried `git send-email` - I got error:
sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.

--
Sveta.

