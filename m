X-GM-THRID: 6202672545102036992
X-Received: by 10.112.159.4 with SMTP id wy4mr3942972lbb.15.1444669196469;
        Mon, 12 Oct 2015 09:59:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.81 with SMTP id l78ls492648lfe.46.gmail; Mon, 12 Oct
 2015 09:59:55 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr5953721lbs.18.1444669195903;
        Mon, 12 Oct 2015 09:59:55 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id w4si600970wiz.0.2015.10.12.09.59.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id ge5so25517728wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sLcwoI+m4S0YoqRt9cGTEhTcY0YuC5kNtXvQW/uquX4=;
        b=pgsfLpHbi2C6q2UFZjJP9N8Q/rEDr2+zOGhysZ1qly6s/ix6bqKslOIVBQw1/+oU6N
         Hf56C/qe8+Ki0/4JAqqKmjP+u6aApSRXb81QC5eqJALwjSdXltLGI60pi2iVlcXMEwxl
         +08VphrrzA4pauzZKWo7Qi+mmw6IAlhB/K4zR9gk4nxHaQfd+aOPsfWA9jinerukqToA
         7KyaRZ3WHSmAg29k5BttLdiIjFWgmLRXfIrV+79aY60LrN44Ex9Lr1+fOPwZ6xh3Mb/R
         GzinkVDs73XNXqQnJf1HdbY1dPwlYfjX5g32UH/HiuB7dByO+2I1Kx+f3tRSZRtteT7s
         zRKg==
MIME-Version: 1.0
X-Received: by 10.180.81.199 with SMTP id c7mr15060795wiy.87.1444669195754;
 Mon, 12 Oct 2015 09:59:55 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:59:55 -0700 (PDT)
In-Reply-To: <e6bc65aa90f1ab391b061fd8a046c452ebcd95a9.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<e6bc65aa90f1ab391b061fd8a046c452ebcd95a9.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:59:55 +0300
Message-ID: <CAEnQRZAzubs6JJ9vO_FiYS-+JQDcXCEPWdeHvF_h5vD8_D68_A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/9] staging: iio: adc: use kernel
 types u32 and u64
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Convert uint32_t to u32 and uint64_t to u64 in order to
> follow the kernel best practice
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
>
>  drivers/staging/iio/adc/mxs-lradc.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
> index 3f7715c..d88d85b 100644
> --- a/drivers/staging/iio/adc/mxs-lradc.c
> +++ b/drivers/staging/iio/adc/mxs-lradc.c
> @@ -108,12 +108,12 @@ static const char * const mx28_lradc_irq_names[] = {
>  struct mxs_lradc_of_config {
>         const int               irq_count;
>         const char * const      *irq_name;
> -       const uint32_t          *vref_mv;
> +       const u32               *vref_mv;
>  };
>
>  #define VREF_MV_BASE 1850
>
> -static const uint32_t mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
> +static const u32 mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
>         VREF_MV_BASE,           /* CH0 */
>         VREF_MV_BASE,           /* CH1 */
>         VREF_MV_BASE,           /* CH2 */
> @@ -132,7 +132,7 @@ static const uint32_t mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
>         VREF_MV_BASE * 4,       /* CH15 VDD5V */
>  };
>
> -static const uint32_t mx28_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
> +static const u32 mx28_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
>         VREF_MV_BASE,           /* CH0 */
>         VREF_MV_BASE,           /* CH1 */
>         VREF_MV_BASE,           /* CH2 */
> @@ -198,14 +198,14 @@ struct mxs_lradc {
>
>         struct clk              *clk;
>
> -       uint32_t                *buffer;
> +       u32                     *buffer;
>         struct iio_trigger      *trig;
>
>         struct mutex            lock;
>
>         struct completion       completion;
>
> -       const uint32_t          *vref_mv;
> +       const u32               *vref_mv;
>         struct mxs_lradc_scale  scale_avail[LRADC_MAX_TOTAL_CHANS][2];
>         unsigned long           is_divided;
>
> @@ -1138,8 +1138,8 @@ static irqreturn_t mxs_lradc_handle_irq(int irq, void *data)
>         struct iio_dev *iio = data;
>         struct mxs_lradc *lradc = iio_priv(iio);
>         unsigned long reg = readl(lradc->base + LRADC_CTRL1);
> -       uint32_t clr_irq = mxs_lradc_irq_mask(lradc);
> -       const uint32_t ts_irq_mask =
> +       u32 clr_irq = mxs_lradc_irq_mask(lradc);
> +       const u32 ts_irq_mask =
>                 LRADC_CTRL1_TOUCH_DETECT_IRQ |
>                 LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
>                 LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2);
> @@ -1175,7 +1175,7 @@ static irqreturn_t mxs_lradc_trigger_handler(int irq, void *p)
>         struct iio_poll_func *pf = p;
>         struct iio_dev *iio = pf->indio_dev;
>         struct mxs_lradc *lradc = iio_priv(iio);
> -       const uint32_t chan_value = LRADC_CH_ACCUMULATE |
> +       const u32 chan_value = LRADC_CH_ACCUMULATE |
>                 ((LRADC_DELAY_TIMER_LOOP - 1) << LRADC_CH_NUM_SAMPLES_OFFSET);
>         unsigned int i, j = 0;
>
> @@ -1198,7 +1198,7 @@ static int mxs_lradc_configure_trigger(struct iio_trigger *trig, bool state)
>  {
>         struct iio_dev *iio = iio_trigger_get_drvdata(trig);
>         struct mxs_lradc *lradc = iio_priv(iio);
> -       const uint32_t st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;
> +       const u32 st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;
>
>         mxs_lradc_reg_wrt(lradc, LRADC_DELAY_KICK, LRADC_DELAY(0) + st);
>
> @@ -1248,10 +1248,10 @@ static int mxs_lradc_buffer_preenable(struct iio_dev *iio)
>         struct mxs_lradc *lradc = iio_priv(iio);
>         int ret = 0, chan, ofs = 0;
>         unsigned long enable = 0;
> -       uint32_t ctrl4_set = 0;
> -       uint32_t ctrl4_clr = 0;
> -       uint32_t ctrl1_irq = 0;
> -       const uint32_t chan_value = LRADC_CH_ACCUMULATE |
> +       u32 ctrl4_set = 0;
> +       u32 ctrl4_clr = 0;
> +       u32 ctrl1_irq = 0;
> +       const u32 chan_value = LRADC_CH_ACCUMULATE |
>                 ((LRADC_DELAY_TIMER_LOOP - 1) << LRADC_CH_NUM_SAMPLES_OFFSET);
>         const int len = bitmap_weight(iio->active_scan_mask,
>                         LRADC_MAX_TOTAL_CHANS);
> @@ -1456,7 +1456,7 @@ static const struct iio_chan_spec mx28_lradc_chan_spec[] = {
>  static int mxs_lradc_hw_init(struct mxs_lradc *lradc)
>  {
>         /* The ADC always uses DELAY CHANNEL 0. */
> -       const uint32_t adc_cfg =
> +       const u32 adc_cfg =
>                 (1 << (LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0)) |
>                 (LRADC_DELAY_TIMER_PER << LRADC_DELAY_DELAY_OFFSET);
>
> @@ -1583,7 +1583,7 @@ static int mxs_lradc_probe(struct platform_device *pdev)
>         struct resource *iores;
>         int ret = 0, touch_ret;
>         int i, s;
> -       uint64_t scale_uv;
> +       u64 scale_uv;
>
>         /* Allocate the IIO device. */
>         iio = devm_iio_device_alloc(dev, sizeof(*lradc));
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e6bc65aa90f1ab391b061fd8a046c452ebcd95a9.1444419393.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

