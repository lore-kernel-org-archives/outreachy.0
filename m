X-GM-THRID: 6661088091510407168
X-Received: by 2002:a24:394f:: with SMTP id l76mr1309805ita.23.1550905439439;
        Fri, 22 Feb 2019 23:03:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8303:: with SMTP id x3ls1138125iom.3.gmail; Fri, 22 Feb
 2019 23:03:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqw4HEa5gc8BmiQN2T3MexB5F+vomlOKOqS8ErS4c7mHVMArbiZuAy2GGm9jXZ+vq0At83wg
X-Received: by 2002:a6b:7708:: with SMTP id n8mr1476461iom.36.1550905438627;
        Fri, 22 Feb 2019 23:03:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905438; cv=none;
        d=google.com; s=arc-20160816;
        b=jvC4CLXHNIrjZF4S9x4624BuwAy7LWDRcl/o4KUE+R8ah3wkqnGJYImPz5zpxDjQ1n
         lPaAYBP96RN5PBYk6w1Cah8EaylVoiuM2WeH+Vs26Q8lFuHlI9uEn14OwgrmNZz/eQAh
         pKLMJBibn5SPvSlz9HlfZiIQkDSBEMM1dkFi7/jbjW5O8eNpObY0iL6WHSX1qUfv4Plv
         h9eWemJB4GvwNc1A/4Z3H/5qn/zKdsgzk4XARvGRYuTCbtmsrTeuEJngvakQ51+VqN8i
         qfOcts0KmB4st6xV+0a1ZDJD6o3wqhkw23XVmOzw/07Ui8jzZTYbPgXFKIpn7Pm4+HpM
         6qww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4R7vPOYtLbXSOR51OCWpCkoHdSxlWiKbnXMRjrc6ogE=;
        b=OJqtBwmIK5RV1+SdvWKZ3YpCrHX/IArmr/OhJnd9TJD4zrmAaJ95mGwyKe3mtTXMf3
         aSE9djuvry8ArOs01aJtJZPGPd3UJw9q/cnIQnqz9bDn0uuwwoiv80STWoq8o2hgO2kn
         ehuseTHns/Z7r99Ti86iKnRVA9SB6E+EM0ZKEpnkchvZXG5EuGrvvimGjGoQkgSBoo0g
         QBaE/8GUqvUD4RMl9uW+RJZkWeejE2gpFJZjAx7pw7bz2/qX2hFCG+MfZ81idqFmyDXo
         BwlJc6PeYxXrlllEcF9NiZ/tQ1nkSqrUqeiGMpBfuJ2YwC9ZCauPFQgeY7JBzEb8h9r+
         CKow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eJOcLhQe;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id x22si165602ita.0.2019.02.22.23.03.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eJOcLhQe;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id 101so2096671pld.6
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4R7vPOYtLbXSOR51OCWpCkoHdSxlWiKbnXMRjrc6ogE=;
        b=eJOcLhQe2Xmo1rzd2AMk1tgc7sJM2qwnQXHsal1TffrigxaQ1dnspsBDKhPL5Tve98
         d9S3/p5zUqKNDg9BC8m/5dW2rL6GyW+1d/m1aezycx6QEePo+jWAOxHj84NInw4Nfhh7
         w2jPPYlV09Rx41+awS+hW0PwGQde7hgeimwKxBRl4Ib81tGO8cGxcJC3Pz1FhfHV6N1M
         8OJlIrS9N1a/FwbVHTJvVUnlHPmwuktRLf3qXIbTEAHhpGZvrpZ9YBOFA6517geglmLC
         t+TyW+bqs9Upjx4XeUFa0ph+z+qkP9+nkteUnZPTf+UGDH1cf+uSbrgkim82OhJQE+n+
         dfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4R7vPOYtLbXSOR51OCWpCkoHdSxlWiKbnXMRjrc6ogE=;
        b=jUevfkbRGsp3Tu9hPraNxOpc8vHm7JbeelnPfrC49nE33nR08V7x7iQJmR/wsdL//f
         S6qD5aL41Frq23Llo1RNmXzAPGMAUQWGK488N9v+1pjSBIiszKVypj7Wj0MhgJ5i0McC
         /jHocIIjW9bxD9xtzHspUlXQe2OWEraa46Fj1ffsZr6P3pZ1fJHyD8TRJ10PQjzir6JG
         iCEs68WtBP7eSzDQiqxaFfHMnf8BV7kvQN4EBNbpnYJHo/h+rnXUDHZANcWrVCB6a8Se
         THOITooKgsVMXqBO635CZy73CYxeJ5Uqnz9wqEyO2hIGYXsLxflw7qXOvp4KcEiLZYHY
         zPHw==
X-Gm-Message-State: AHQUAubazzQGzDTcqagQXLwW3mRcnCOMuXjyQjdDfCGW2qHNoOu6mB7C
	KuBY30iOM7uuGE7SbzmZcKTzZUbgROs=
X-Received: by 2002:a17:902:e00d:: with SMTP id ca13mr8138903plb.206.1550905438126;
        Fri, 22 Feb 2019 23:03:58 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id p34sm6252336pgb.18.2019.02.22.23.03.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:57 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] Staging: greybus: Do not use multiple blank lines
Date: Sat, 23 Feb 2019 12:33:25 +0530
Message-Id: <20190223070325.6750-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223070325.6750-1-bhanusreemahesh@gmail.com>
References: <20190223070325.6750-1-bhanusreemahesh@gmail.com>

Removes unnecessary blank line
issue found with checkpatch.pl:
CHECK: Please don't use multiple blank lines

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/control.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index ffa41d31896d..a9e8b6036cac 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -15,7 +15,6 @@
 #define GB_CONTROL_VERSION_MAJOR	0
 #define GB_CONTROL_VERSION_MINOR	1
 
-
 static int gb_control_get_version(struct gb_control *control)
 {
 	struct gb_interface *intf = control->connection->intf;
-- 
2.17.1


