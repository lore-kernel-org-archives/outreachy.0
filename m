Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F722102
	for <outreachy@lists.linux.dev>; Wed,  7 Dec 2022 14:20:02 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1322d768ba7so21446605fac.5
        for <outreachy@lists.linux.dev>; Wed, 07 Dec 2022 06:20:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RhBLk8VcFaz/v/fMZe1KFzL357JI5UetuESxzLIfjRI=;
        b=DxU9c3gpIbl4tgZBlh0Nm0XO0wuERwd8mOuGexoXWhqxvyecL4xO3YPZQ9VI6E5u6n
         nnKoG2xB7kv6ZW3oWa2tN4yXuMp+Wv0qOZ6Y+SPzbXaKwfRqMmhy0w1Q+IP3uiUcwPY2
         rt4NlP+6Fky+l7rWD5bNlQFBqOQa7CJD1wKMnv44gZgr5qJV1aQ/1OtGGEBG5F/Uwold
         57+wedkVddVkWBZVdiEvxu8EkHQo5c/8ESR1VEVUpt3kyHJYf7WK4W6qXUnhU8xPfWD2
         hGOqdHiZGKz8wEVQwmJwGCdixPh+j8F0NY+kVCuaVNZRm59QV2bEcjopIDm4caqDGQlD
         EMCQ==
X-Gm-Message-State: ANoB5pkObvmrsIPCRUeMmq+v8A4wDj0EY29Z6UVv6ggu15DxOJ+WIiLC
	S/epI14eg2dI0a2MNsTtYA==
X-Google-Smtp-Source: AA0mqf5Ces9tvVXcwYUIowwHdMMYUnDLEQYpabQuJIpvVLOqIoD7NUUxHhH9Fbamf0mmXpL6Z9I0lQ==
X-Received: by 2002:a05:6870:be9b:b0:144:a46f:e355 with SMTP id nx27-20020a056870be9b00b00144a46fe355mr7016254oab.95.1670422801747;
        Wed, 07 Dec 2022 06:20:01 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w64-20020aca6243000000b0035ba52d0efasm9484993oib.52.2022.12.07.06.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 06:20:01 -0800 (PST)
Received: (nullmailer pid 2124809 invoked by uid 1000);
	Wed, 07 Dec 2022 14:19:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Okan Sahin <okan.sahin@analog.com>
Cc: linux-kernel@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, outreachy@lists.linux.dev, Mark Brown <broonie@kernel.org>, Ramona Bolboaca <ramona.bolboaca@analog.com>, linux-iio@vger.kernel.org, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Marcus Folkesson <marcus.folkesson@gmail.com>, William Breathitt Gray <william.gray@linaro.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20221207090906.5896-5-okan.sahin@analog.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
 <20221207090906.5896-5-okan.sahin@analog.com>
Message-Id: <167042222369.2111889.8418799302512280680.robh@kernel.org>
Subject: Re: [PATCH 4/5] staging: dt-bindings: regulator: adi,max77541.yaml
 Add MAX77541 Regulator bindings
Date: Wed, 07 Dec 2022 08:19:49 -0600


On Wed, 07 Dec 2022 12:08:43 +0300, Okan Sahin wrote:
> This patch adds document the bindings for MAX77541 and MAX77540
> regulator drivers.
> 
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>
> ---
>  .../bindings/regulator/adi,max77541.yaml      | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77541.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/regulator/adi,max77541.yaml:44:28: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/regulator/adi,max77541.yaml: Documentation/devicetree/bindings/mfd/adi,max77541.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221207090906.5896-5-okan.sahin@analog.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

