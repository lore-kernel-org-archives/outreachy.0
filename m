X-GM-THRID: 6619077441472167936
X-Received: by 2002:a9d:6552:: with SMTP id q18mr6602202otl.37.1541124298892;
        Thu, 01 Nov 2018 19:04:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4106:: with SMTP id o6-v6ls7347439oia.5.gmail; Thu, 01
 Nov 2018 19:04:57 -0700 (PDT)
X-Google-Smtp-Source: AJdET5exmzDy+7dkuVwbEVWo0wfNCJr4ZiifvHt9Ma9v5GtLy/JYwgY5mISNpoHh+ZveoN91ttNd
X-Received: by 2002:aca:ef8a:: with SMTP id n132-v6mr7081964oih.36.1541124297640;
        Thu, 01 Nov 2018 19:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124297; cv=pass;
        d=google.com; s=arc-20160816;
        b=EKa/ynx2UM3W9/ECJu7afDk9wqV8N0d2iWVEt5OnGW91Map8LQCwKugj9NNSmsN6CS
         JSz7yu1AyTd1VF3HXSXjgYOymNh7SQvmEZpJ+qJJfQNl0itknY9iRHDRG+IiHAen+VLS
         sVCFNRI1KEBcDqBdIIngz4hJ6LyaJm46eVjVIzCCa3O60JE4luw/lGoiklLwcVC+BVUt
         myYohq0fuCY7COdgZtbkNM9wOgVoiDKyJoOGyJwuOwM4sBsBpGWJ4iGttH6mszo5kmTX
         NoFwCHy8T+BHr06GJSDN24mW1Z6DIPCGj8JCUWYSa38yszXquc4+c7aYpj1PlrN0xG50
         7zxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BL/qEvYJ5N9fRsiaal25GB5tlyZM7khNTaEeWAOxh+s=;
        b=RZ9wkLZbi2QZf+KdsWr3c6UCxkYi9xVjXDmHsKDw8pf4Hzu2f7sfGPfQTz4+Qe/L0G
         Ke1BzKGlS7ekMlgPTo8ajTg8MtHQfDTiwttdB4flLD824zge/UW1DXuHEhoJkgAj/zbk
         d6sCExlMK1sndIT2cG9iYmxW8M8UrbbBWTAl/FTzwDAKY5BP5hlmfZKJVdDFG2J4+0GZ
         eFTT+PBi9QM5gvgQ+Dd0SiTx9OQkuleemn3GObhl5trOzwv0qsEQyy/320xVAluam7+x
         jaLyXtIRvDWqMv1TmI4COxLz1VWO5hdL+BfQHQPGyseMbkB8jPP9xq1mC+RzkgdazcIX
         e5Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gwlm6Q5T;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p84-v6si298719oih.1.2018.11.01.19.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gwlm6Q5T;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124292; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=BCq8TNTSdOhzMCUo0oivi7u6gAcyfFtldGLDanzl/XgDLLKNP6/9+eolmJJ/e+b0i8dUAhXN/BhWtn2bUmvCzaxSB2mQoGqYYZxBuUxUxp5J7ljDMMikf2DHiQzxb0hN4OTUg1W3f/5mJF9kwFbQsqKaF+VbezbWJ7ddfX4kk9E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124292; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=BL/qEvYJ5N9fRsiaal25GB5tlyZM7khNTaEeWAOxh+s=; 
	b=AxPa01XyeL65hIDQe75xLa6uKxcsVC6kWzwcdGiOO8F0Oyu/2F5e8XiFKsWZXAIYZ9PQKhylsy9sU/eWhuJZC3Cgk4AI4R7iz4nM2AUI2Ll8L70Cp+pQAZ7D6Xo2i4tge8F1N4ZU8aVrlJuSr2QjaJVyvW/z7iTB17sekf4UCN0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124292;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=988; bh=BL/qEvYJ5N9fRsiaal25GB5tlyZM7khNTaEeWAOxh+s=;
	b=gwlm6Q5TknW45arG3wUOF00FBhSdKJMRvTp4Fooc/PeU5o4hwgT1iQMaUEvz3JtJ
	vY7FU2S6nQ0KL4ULz/TmEbHXFbQtTjxOmzbtuxG4O6UTIq6YndawjZyrJAcIweSTA0b
	G4FsS9HUOoe66Et0ZSXIQxMoSmApaLJKItEXPXLM=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154112429097892.31691123036796; Fri, 2 Nov 2018 03:04:50 +0100 (CET)
Date: Fri, 2 Nov 2018 02:04:49 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: greybus Match with open parentheses
Message-ID: <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
References: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix the arguments by open parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 9c453e0b1b33..08a51c652a10 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
 int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnecting_operation(struct gb_control *control,
-					u16 cport_id);
+				       u17 cport_id);
 int gb_control_mode_switch_operation(struct gb_control *control);
 void gb_control_mode_switch_prepare(struct gb_control *control);
 void gb_control_mode_switch_complete(struct gb_control *control);
-- 
2.19.1



