X-GM-THRID: 6395900241087823872
X-Received: by 10.25.196.68 with SMTP id u65mr2586896lff.0.1489862082770;
        Sat, 18 Mar 2017 11:34:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls927911ljf.34.gmail; Sat, 18 Mar 2017
 11:34:41 -0700 (PDT)
X-Received: by 10.25.56.22 with SMTP id f22mr593754lfa.13.1489862081560;
        Sat, 18 Mar 2017 11:34:41 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id t131si358429wmf.1.2017.03.18.11.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:34:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so13176035wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oa76D5zQy77aYkU++gebOGoVT1S+zwABt8shg4Eoz5E=;
        b=HnPWtM6ot3GMaxYcovEUJ9rzLNOo/0aqZKeKMKBBzJQeN5SoKae4u5jY8dTRUxmD9z
         aFq2JuuiIp2JmlzbOzctq9A2jyrxSDBwJLsNsRFJWuCw0sLUvLQtGp0wP9A9VAfu2AGW
         TfGV6z/rpepMn85sFgKJYaFF0QKvV2MOBHAFgz0WZn1tnh1BgBQD8ikUQEmFWwQXqWjf
         FQIMgD+qNYPMihIVKgtHfMs3NSkGHZqHRntcfaJ3QcYi7kFvwAv1JRK9RbNV8elku+ft
         aYWG75Ny37fsnn0gWIgBavXDOTPrIQDHBGDtof4oea4I/xQNdHRF09HYRDw2PCfNpO/Z
         lcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oa76D5zQy77aYkU++gebOGoVT1S+zwABt8shg4Eoz5E=;
        b=cKfbaekGbLt1zoC5a7LhTR8hEijCGa2iPwxKQLi4GRUsRvb3TcUJwZKNTRLhGkoNLd
         YxTYKkWHlUaaUVe3EtjzwQsN/S4ekn5WKnM3xeJex7AUKdsgIM0ryDMYPZUMAzKUrcyk
         GXVcp/f7/wJ2uWdcYCvkffad2UdMtmyvphKLPR4ePbvVkK7GC9oBZz58nHBngJCnY6eZ
         SkAJJWsRWjBfE6qr7bWZb6BQ3SEKgBZ8jNKi2OlOlYB1NnS7ypYZXJgdFNUZc4pM6mgY
         ahqju1YjekAsTCn2YRQbdUXLzQJWojpMyivrIyGei9cP/U8YEjR98ceyp/ZRIhmiMMTS
         ipSg==
X-Gm-Message-State: AFeK/H35fZHpkMC6agvBetJw5l5fJQAzeaw/vHM3KQ78YuW4/r28pzFVLUhVIdx4OU3Hiw==
X-Received: by 10.223.130.144 with SMTP id 16mr19980484wrc.32.1489862081385;
        Sat, 18 Mar 2017 11:34:41 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id k8sm14253169wre.19.2017.03.18.11.34.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:34:40 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 0/4] staging: rtl8712: Invert if statements to reduce indentation level
Date: Sat, 18 Mar 2017 20:33:58 +0200
Message-Id: <cover.1489861352.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

This patchset reduces indentation level by inverting if statements,
in order to clear out the error handling code immediately, and then
continue executing the function without the excessive indentation and
additional else branches.

These pieces of code where indentation was improved
were found using Coccinelle.

---
Changes in v2:
  - Make the commit messages more clear
  - Improve layout of the functions

Narcisa Ana Maria Vasile (4):
  staging: rtl8712: Invert if statements to reduce indentation level
  staging: rtl8712: Invert if statement reduce indentation level
  staging: rtl8712: Invert if statements to reduce indentation level
  staging: rtl8712: Invert if statement to reduce indentation level

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 135 ++++++++++++--------------
 1 file changed, 63 insertions(+), 72 deletions(-)

-- 
1.9.1


