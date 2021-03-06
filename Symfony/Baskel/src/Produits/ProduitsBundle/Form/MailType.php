<?php

namespace Produits\ProduitsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MailType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('subject',ChoiceType::class,
            array(
                'choices' => array(
                    'Fidélité' => 'fidelite',
                    'Avertissement'=>'avertissement',
                    'Coupon'=>'coupon'
                ),'expanded'=> false
            ))
                ->add('mail')
                ->add('objet')
                ->add('Envoyer', SubmitType::class);
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Produits\ProduitsBundle\Entity\Mail'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'produits_produitsbundle_mail';
    }


}
