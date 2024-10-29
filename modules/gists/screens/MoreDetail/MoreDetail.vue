<script setup lang="ts">
import PublicHeadline from '@/modules/gists/components/PublicHeadline/PublicHeadline.vue';
import GistCodeSnippet from '@/modules/gists/components/CodeSnippet/CodeSnippet.vue';

//dynamic import -> o componente só é "carregado" quando é solicitado (precisamos apenas prefixar o componente com o "Lazy")
import LazyDialogPaymentSuccess from '@/modules/payments/components/DialogPaymentSuccess/DialogPaymentSuccess.vue';
import LazyDialogPaymentError from '@/modules/payments/components/DialogPaymentError/DialogPaymentError.vue';

const route = useRoute();
const isPaymentSuccess = ref<boolean>(false);
const isPaymentFailed = ref<boolean>(false);

onMounted(() => {
  const { success_payment, fail_payment } = route.query;

  if (success_payment) isPaymentSuccess.value = true;
  if (fail_payment) isPaymentFailed.value = true;
});
</script>

<template>
  <PublicHeadline
    title="currency_format.py"
    lang="python"
    description="função em python para fazer **formatação de moeda**"
    author="sbrenomartins"
  />

  <GistCodeSnippet :isPaid="false" :loading="false" lang="typescript" />

  <LazyDialogPaymentSuccess v-model:visible="isPaymentSuccess" />
  <LazyDialogPaymentError v-model:visible="isPaymentFailed" />
</template>
