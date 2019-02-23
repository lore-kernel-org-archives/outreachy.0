X-GM-THRID: 6661088091510407168
X-Received: by 2002:aca:3286:: with SMTP id y128mr4693027oiy.7.1550905430487;
        Fri, 22 Feb 2019 23:03:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls3318796otr.7.gmail; Fri,
 22 Feb 2019 23:03:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3Iak2K2sF4jnp5Mal/AzdjnSS0/w/IV36/AJN/HA3nzSxlyAdL/fECVZocXriV/2Li7fOHCv
X-Received: by 2002:a9d:650f:: with SMTP id i15mr4336144otl.70.1550905429700;
        Fri, 22 Feb 2019 23:03:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905429; cv=none;
        d=google.com; s=arc-20160816;
        b=e3xVH6Ap0+Dc3upPI6Zi5cGKOYpc/+p2VV8TA3+LJ9r2YbxpyT7EDpyRERRiq6/BG2
         fT7YCBUvSTgM2rgcJssLe7wgx/1mADxp8KsbI/qAq73XFbHv7nPaUoahk8tMA33FzDZY
         zuds6Erumci8XQH3dOtI2QOHCwGR5WiTp8mwcN+IY04bd39v1gDrkOo5D3tVWsyRqusz
         3Z2HsmfDblmpFQcZbzC1RVYEa9Mh9bGQf/Z4NdwdRpaSUkxwcyQT7ggWSx7OUcEY7TZw
         YBRDLzp93bWk64su7FAbQAsXZdE8he3KE75Rz54Y+djslxUfdEKX4tItzhFiY13GH0AH
         0hHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=PZl3b1Boanv0cjsPXBGZyvlCpt8ak92uKWvcL7y5YQ8=;
        b=P2f2+UAYSAItijnFUBXpXRklUaCNggSoW8Y3uBNgTJcDtqdSz4DH+isyyENwtw7byF
         mgfhDnqbcyitxSr/ZsMUH/STBOVqQRfdcQQlXCic1WXYgBzNCdrtlibWHsyCytjlougp
         7iysJX3ldRKGDe580odxbgIXiDrhe3pR+SUwK9Za8/B3rowuUwd3Pwl3RgoV0wfwUAig
         7cldaAtCBeGk7BCjI9r/q+FV01cHIpugDR37DjDfONygkXmcrOKOVEM13a6g2Gl+ypQK
         9utcC3WreWpiskiAH9CPmsiO4ZxXhUG4UnuWQNGwJtaJZbD4JbpUgqqbvxWTg4euo6E2
         eQwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y3EC2bDx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l6si258234otn.5.2019.02.22.23.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y3EC2bDx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id j5so2124310pfa.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PZl3b1Boanv0cjsPXBGZyvlCpt8ak92uKWvcL7y5YQ8=;
        b=Y3EC2bDx1LFH7Giyc24/YyeBJqr+KV6wo7Jx3KHjYFmbXDDhYjuCaM31hvi8r6rS2l
         s7opUS2U53skVgNHStTKHnYE3Nr2AHLUayjUqtZbe7wo8ZA0XFzTQO2aL/DNujgDRH37
         Oj6BgaTEn6CSXThTbWbZMVnGvtDed0c63LE/j+4a4jat4IpejI+zkrk0rmzKsCiRWuiL
         RHeulFzcyRPOgmjaK9BiYt7oPGvow50IdXTvVH6ftiuhSKMU5V8/sRiujA2KCNztdkYl
         DmMfP+2dDHXx9ayFy1qEEzyzzIdC+35MUq/E6il9zQZGtoJXZ5EmLHS/oBLHXe5n9yIn
         HgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PZl3b1Boanv0cjsPXBGZyvlCpt8ak92uKWvcL7y5YQ8=;
        b=V6gSaJoJuQBeupUmw4AHv59xilXEaGIWFSQOZL3FBwDZf6SH8DuPRQVy68aktkphih
         OA1HbVHXQOy3ZYMS4W5uwJmrbJYa+w2gtc9ntVTqAlCxOBCssznxMRXYDFhp1Dp8byGZ
         aP1aiarLrghXminKIypP0zSbJxlEm4prrCGDUcZ3+b7J6g6YsB6KpoCDsTDa9XNlozaK
         im50Y5EIsSeVPxFS06sHiidY5wlks39/CZqWXQuwJGUsyMVR6VMKp698UI337bHQvn0g
         J344ob/uBDVgXEVK8rZw/aJDbvNLV59hc8atdZgxeDsax0TUkZveDVo3f9iE9YWVU/E/
         Dqyw==
X-Gm-Message-State: AHQUAuaQhMg5JfUiZuKQbAyz7LHC9bsM/R7Sjo8S+JRXXpANln2LXVSv
	29mZKfxBAjq+4Z810Dj5GuiWTt10m8w=
X-Received: by 2002:a65:6149:: with SMTP id o9mr4228206pgv.315.1550905428877;
        Fri, 22 Feb 2019 23:03:48 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id p34sm6252336pgb.18.2019.02.22.23.03.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:48 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] Staging: greybus: Alignment should match open paranthesis
Date: Sat, 23 Feb 2019 12:33:22 +0530
Message-Id: <20190223070325.6750-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223070325.6750-1-bhanusreemahesh@gmail.com>
References: <20190223070325.6750-1-bhanusreemahesh@gmail.com>

Cleans up checkpatch.pl issue in various files:
CHECK: Alignment should match open parenthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/bundle.c     | 2 +-
 drivers/staging/greybus/connection.h | 2 +-
 drivers/staging/greybus/core.c       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index 81c018da1248..e97b2b87ba47 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -65,7 +65,7 @@ static struct attribute *bundle_attrs[] = {
 ATTRIBUTE_GROUPS(bundle);
 
 static struct gb_bundle *gb_bundle_find(struct gb_interface *intf,
-							u8 bundle_id)
+					u8 bundle_id)
 {
 	struct gb_bundle *bundle;
 
diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index 8deeb1d5f008..5ca3befc0636 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -88,7 +88,7 @@ void gb_connection_mode_switch_prepare(struct gb_connection *connection);
 void gb_connection_mode_switch_complete(struct gb_connection *connection);
 
 void greybus_data_rcvd(struct gb_host_device *hd, u16 cport_id,
-			u8 *data, size_t length);
+		       u8 *data, size_t length);
 
 void gb_connection_latency_tag_enable(struct gb_connection *connection);
 void gb_connection_latency_tag_disable(struct gb_connection *connection);
diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 412337daf45c..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.17.1


